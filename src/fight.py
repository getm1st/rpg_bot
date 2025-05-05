def fight(list_character_id, list_monster_id):
    # короччче тут должна определяться инициатива, затем сравниваться, а потом будет бой. Вщ 0 идей как это реализоваться нормально

    from data_base import get_character_data, get_monster_data, set_hit, update_data_base, get_data, delete_row
    from sort import check_initiative, hit, damage, choose_target
    players, monsters = [], []
    # Загрузка данных о персонажах и монстрах
    
    for i in list_character_id, list_monster_id:
        players += get_character_data(i)
    for i in list_monster_id:
        monsters += get_monster_data(i)
    
    all_pers = players + monsters  # объединяем всех участников

    # Обновление инициативы загруженном списке
    check_initiative(all_pers)

    # Сортируем по инициативе (используем уже обновлённый список)
    participants = sorted(all_pers, key=lambda x: x["initiative"])

    # Установка хитов у персонажа
    set_hit(players)

    def meeting_enemy():
        enemy = all_pers[1]["name"]
        print(f"""Ты наконец нашел тропинку в густом лесу. Уже представляешь как попадешь к вечеру домой и уляжешься 
            в кровати. Но тут ты слышишь рычание в кустах неподалеку. Кажется дорога домой не будет такой простой как
            хотелось бы. Перед тобой {enemy}""")    
        
    # Сделаю снача логику боя где 1 перс просто мутузит 2 и наоборот, а затем уже буду добавлять вариабельность

    def battle_loop(players, monsters):
        fighters = sorted(players + monsters, key=lambda x: x["initiative"], reverse=True)  # Сортируем по инициативе
        players[0]["hitpoints"] = 8
        players[1]["hitpoints"] = 12
        print("\n🔥 Бой начинается! 🔥")
        
        for i, fighter in enumerate(fighters, start=1):
                if i == 1:
                    print(f"Первым ходит {fighter['name']}")
                else:
                    continue
            
        while any(f["who_is"] == 1 and f["hitpoints"] > 0 for f in fighters) and any(f["who_is"] == 2 and f["hitpoints"] > 0 for f in fighters):
            for fighter in fighters:
                
                ''' Блок проверки статусов, из-за которых существо может пропустить ход '''
                if fighter["hitpoints"] <= 0:  # Пропускаем, если у бойца 0 HP
                    continue
                if fighter["who_is"] == 1:
                    status_fighter = get_data("status", "id_character", fighter["id"]) # Нужно получить данные о статусах атакующего и проверить есть ли в них статус "knock_down"

                else:
                    status_fighter = get_data("status", "id_monster", fighter["id"])
                    
                for i in status_fighter:
                    if i["name_effects"] == "knock_down":
                        time = i['time']
                        if time <= 0:
                            delete_row("status", "id", i["id"])
                        else:
                            if time == 1:
                                round = "встанет через 1 ход"
                            elif time >= 2 and time <= 4:
                                round = f"встанет через {time} хода"
                            else:
                                round = f"встанет через {time} ходов"
                            time = i['time'] - 1
                            update_data_base("status", "time", time, "id", i["id"]) # уменьшаю time на 1 в БД
                            print(f"{fighter['name']} сбит с ног и {round}")
                            continue
                        
                ''' Блок проверки боя '''
                target = choose_target(fighter, fighters)  # Выбираем цель
                
                if not target:  
                    print(f"{fighter['name']} не видит противников и пропускает ход!")
                    continue  # Если нет цели, пропускаем ход
                
                attack_roll = hit(fighter)  # Бросаем d20 на попадание
                if attack_roll >= target["armor_class"]:  # Если атака успешна.
                    
                    ''' Блок абилок и их применение в случае наличия '''
                    if fighter["list_ability"] == None: # если у перса нет абилок, то для следующего if ставим False чтобы перейти к Else:
                        list_ability = False
                    else:  
                        list_ability = fighter["list_ability"].split(", ") # получаю список ability персонажа
                    
                    if list_ability:  
                        for i in list_ability:
                            ability_func = getattr(ability, i, None)  # Получаем функцию по имени

                            if ability_func:  # Если функция найдена
                                example_class = ability_func()
                                if example_class.check_conditions(fighter, target):
                                    example_class.apply(fighter, target)
                                    
                                if fighter['type_action'] == "main": # если ability - основная атака, конец хода. Если дополнительная, то провожу ещё атакау
                                    continue
                                else:
                                    damage_value = int(damage(fighter, attack_roll))  # Рассчитываем урон. Еще передаю attack_roll если она 0 - крит промах, если 999 - крит попадание
                                    target["hitpoints"] -= damage_value  # Вычитаем урон
                                    print(f"⚔️  {fighter['name']} атакует {target['name']} и наносит {damage_value} урона! (Осталось {target['hitpoints']} HP)")
                                    
                            else:
                                print(f"Ошибка: способность '{i}' не найдена в модуле ability.")
                                
                            ''' Блок обычных атак, если нет никаких ability '''
                    else:
                        damage_value = int(damage(fighter, attack_roll))  # Рассчитываем урон. Еще передаю attack_roll если она 0 - крит промах, если 999 - крит попадание
                        target["hitpoints"] -= damage_value  # Вычитаем урон
                        print(f"⚔️  {fighter['name']} атакует {target['name']} и наносит {damage_value} урона! (Осталось {target['hitpoints']} HP)")            
                            
                            
                    if target["hitpoints"] <= 0:
                        print(f"💀 {target['name']} пал в бою!")

            # 🔄 **Обновляем HP персонажей в базе данных**
            for fighter in fighters:
                if fighter["who_is"] == 1:  # Обновляем только игроков
                    update_data_base("characters", "hitpoints", fighter["hitpoints"], "user_id", fighter["user_id"])

            # Удаляем мёртвых бойцов из списка после завершения раунда
            fighters = [f for f in fighters if f["hitpoints"] > 0]

        print("\n🏆 Бой окончен! 🏆")

                
    battle_loop(players, monsters)
        