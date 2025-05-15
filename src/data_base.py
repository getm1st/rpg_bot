import pymysql
from config import host, user, password, db_name
import sort


try:
    connection = pymysql.connect(
    host=host,
    port=3306,
    user=user,
    password=password,
    database=db_name,
    cursorclass=pymysql.cursors.DictCursor
    )
    print("succesesfylly connected...")
    print("#" * 50)
    

    def get_character_data(user_id):
        with connection.cursor() as cursor:
            get_data = f""" SELECT * FROM characters
                                    INNER JOIN races ON characters.race_id = races.id
                                    INNER JOIN classes ON characters.class_id = classes.id
                                    INNER JOIN armors ON characters.armor_id = armors.id
                                    INNER JOIN backgrounds ON characters.background_id = backgrounds.id
                                    INNER JOIN weapons ON characters.weapon_id = weapons.id
                                    LEFT JOIN users ON characters.user_id = users.id
                                    WHERE user_id = {user_id}
                                """
            cursor.execute(get_data)
            user_id1 = cursor.fetchall() # список словарей
            if user_id1:
                user_name = user_id1[0]["username"]
                class_name = user_id1[0]["class_name"]
                print(f"Данные {user_name} успешно получены - {class_name}", end="\n")
                return user_id1
            else:
                print("Ошибка: персонаж не найден")
            """Получение данных о монстре"""

    def get_data(table, condition_column, condition_value):
        with connection.cursor() as cursor:
            get_data = f"SELECT * FROM {table} WHERE {condition_column} = %s"
            cursor.execute(get_data, (condition_value,))
            data = cursor.fetchall()  # Добавили скобки!
            print("=" * 20, f"Получены данные {table} WHERE {condition_column} = {condition_value}", sep="\n")
            return data


    def get_monster_data(monster_id):
        with connection.cursor() as cursor:
            get_data = f""" SELECT * FROM monsters
                            INNER JOIN monster_attacks ON monsters.id = monster_attacks.id_monster
                            INNER JOIN attacks ON monster_attacks.id_attack = attacks.id
                            WHERE monsters.id = {monster_id}"""
            cursor.execute(get_data)
            monster = cursor.fetchall() # список словарей
            if monster:
                user_name = monster[0]["name"]
                danger = monster[0]["danger"]
                print(f"Данные {user_name} успешно получены - уровень опасности {danger}")
                return monster
            else:
                print("Ошибка: монстр не найден")
                return []

    def update_data_base(table, column, value, condition_column, condition_value):
        with connection.cursor() as cursor:
            update_data = f"UPDATE {table} SET {column} = %s WHERE {condition_column} = %s"
            cursor.execute(update_data, (value, condition_value))
        connection.commit()  # Коммитить изменения после выполнения запроса
    

        
    # получить кд
    def get_KD(data):
        with connection.cursor() as cursor:
            if data["who_is"] == 1: # если это перс, то обновляем 
                update_data = f"SELECT armor_class FROM characters"
                cursor.execute(update_data)
                kd = cursor.fetchall()
                print(f"КД {data['name']} = {kd}")
            else:
                update_data = f"SELECT armor_class FROM monsters"
                cursor.execute(update_data)
                kd = cursor.fetchall()
                print(f"КД {data['name']} = {kd}")
        connection.commit()

    # обновить КД у персонажа
    def update_kd(data):
        with connection.cursor() as cursor:
            for i in range(0, len(data)):
                now_data = data[i]
                if now_data["who_is"] == 1: # если это перс, то обновляем 
                    kd = sort.check_kd(now_data)
                    id = now_data["id"]
                    update_data = f"UPDATE characters SET armor_class = {kd} WHERE user_id = {id}"
                    cursor.execute(update_data)
                    print(f"Данные обновлены. КД {now_data['name']} теперь {kd}")
                else:
                    print("Ты пытаешься обновить данные монстра")
        connection.commit()
        
    def set_hit(data):
        with connection.cursor() as cursor:
            for i in range(0, len(data)):
                now_data = data[i]
                if now_data["who_is"] == 1: # если это перс, то обновляем
                    hitpoint = sort.count_hit(now_data)
                    id = now_data["user_id"]
                    update_data = f"UPDATE characters SET hitpoints = {hitpoint} WHERE user_id = {id}"
                    cursor.execute(update_data)
                    print("-" * 30, f"Данные обновлены. У {now_data['name']} теперь {hitpoint} здоровья", sep="\n")
                else:
                    print("Ты пытаешься обновить данные монстра")
        connection.commit()
        
    def get_monster_ability(data):
        with connection.cursor() as cursor:
            get_data = f"SELECT * FROM monster_attacks WHERE id_monster = {data['id']}"
            cursor.execute(get_data)
            ability = cursor.fetchall()
            print("=" * 50, f"Получены данные об атаках {data['name']}", sep="\n")
            return ability
        
    def check_skill(data):
        with connection.cursor() as cursor:
            get_data = f''' SELECT c.name, cs.skill_id, s.name_skill FROM character_skills cs
                            JOIN skills s ON cs.skill_id = s.id
                            JOIN characters c ON c.id = cs.character_id
                            WHERE c.id = {data["id"]}''' # беру таблицу со всему скиллами указанного id персонажа
            cursor.execute(get_data)
            skill_table = cursor.fetchall()
            print("=" * 50, f"Получены данные о скилах {data['name']}", sep="\n")
            return skill_table   
    
    def character_ability(data):
        with connection.cursor() as cursor:
            get_data = f''' SELECT c.name, cs.skill_id, s.name_skill FROM character_skills cs
                            JOIN skills s ON cs.skill_id = s.id
                            JOIN characters c ON c.id = cs.character_id
                            WHERE c.id = {data["id"]}''' # беру таблицу со всему скиллами указанного id персонажа
            cursor.execute(get_data)
            skill_table = cursor.fetchall()
            print("=" * 50, f"Получены данные о скилах {data['name']}", sep="\n")
            return skill_table 
            
    def insert_status(status_id, creature, remaining_time=None, effect_value=None, effect_meta=None):
        """
        status_id      – id из справочника status
        creature       – словарь персонажа, у которого есть поля 'id' и 'who_is'
        remaining_time – оставшиеся ходы (или None)
        effect_value   – числовой параметр эффекта (или None)
        effect_meta    – произвольный текст/JSON (или None)
        """
        # Определяем, в какую колонку пихать creature['id']
        if creature['who_is']==1:
            char_col = "id_character" 
        else:
            char_col = "id_monster"
            
        char_id  = creature['id']
        
        sql = f"""
        INSERT INTO status_now
        (status_id, {char_col}, remaining_time, effect_value, effect_meta)
        VALUES (%s, %s,        %s,             %s,           %s)
        """
        with connection.cursor() as cursor:
            cursor.execute(sql, (
                status_id,
                char_id,
                remaining_time,
                effect_value,
                effect_meta
            ))
        connection.commit()
        
        
    def get_data(table, condition_column, condition_value):
        with connection.cursor() as cursor:
            get_data = f"SELECT * FROM {table} WHERE {condition_column} = %s"
            cursor.execute(get_data, (condition_value))
            data = cursor.fetchall()
            print("=" * 50, f"Получены данные {table} WHERE {condition_column} = {condition_value}", sep="\n")
            return data
    
    def delete_row(table, condition_column, condition_value):
        with connection.cursor() as cursor:
            get_data = f"DELETE FROM {table} WHERE {condition_column} = %s"
            cursor.execute(get_data, (condition_value))
            print("=" * 50, f"Удалены данные {table} WHERE {condition_column} = {condition_value}", sep="\n")
        connection.commit()  # Коммитить изменения после выполнения запроса
        
    def get_ability(target):
        with connection.cursor() as cursor:
            if target['who_is'] == 1:
                entity = 'character'
            else: 
                entity = 'monster'
            get_data = f''' SELECT * FROM abilities
                            INNER JOIN {entity}_abilities p_a ON abilities.id = p_a.ability_id
                            WHERE {entity}_id = {target['id']}'''
            cursor.execute(get_data)
            data = cursor.fetchall()  # Добавили скобки!
            print("=" * 20, f"Получены данные об умениях {target['name']}", sep="\n")
            return data
    
except Exception as ex:
    print("Connetion refused...")
    print(ex)