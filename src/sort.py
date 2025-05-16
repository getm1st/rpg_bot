import os
os.getcwd()

import random
from random import randint
import data_base
import time
import sys


# определение большей из характеристик
def better_value(data, value1, value2):
    first = data[f"{value1}"]
    second = data[f"{value2}"]
    if first >= second:
        return first
    else:
        return second

def advantage_disadvage(advantage: bool): # True если преимущество, False если помеха  
    a = D20_dice()
    b = D20_dice()
    print(a, b)
    dice = (a, b)
    if advantage:
        print(max(dice))   
        return max(dice)
    else:
        print(min(dice))
        return min(dice)
"""Критическое попадание"""
def critical_attack (num_dice_num: str): # принимаем строку типа 2d4
    num_dice_num = num_dice_num.lower().split("d") #делим на количество бросков и какой кости (на всяк случай в ловер если D а не d)
    dop_damage = 0
    for _ in range(1, int(num_dice_num[0])): # теперь бросаем столько раз, сколько собсна написано
        dop_damage += randint(1, int(num_dice_num[1])) # получаем дополнительный дамаге
    return dop_damage

def type_text(text):
    print(text)
# def type_text(text, delay=0.05, pause_delay=0.6, pause_comma=0.3):
#     for char in text:
#         sys.stdout.write(char)
#         sys.stdout.flush()
#         if char in ".!?":
#             time.sleep(pause_delay)  # Длиннее пауза после точки, запятой и т.д.
#         elif char in ",–:":
#             time.sleep(pause_comma)
#         else:
#             time.sleep(delay)  # Обычная пауза
#     print()  # Добавляет перенос строки в конце


"""Бросаем D20"""
def D20_dice ():
    d20_roll = random.randint(1, 20)
    return d20_roll

def dice(dice_str): # Так, у меня на входе 2d10 + 4 например
    count, diсe_l = dice_str.lower().split("d") # делится на count(2) и dice(10 + 4)
    if "+" in diсe_l:
        diсe_l, plus = diсe_l.split(" + ") # Получается dice 10 (какая кость кидается), plus 4 (доп урон)
        count, diсe_l, plus = int(count), int(diсe_l), int(plus)
        result = sum(random.randint(1, diсe_l) for _ in range(count)) + plus
    else: 
        count, diсe_l = int(count), int(diсe_l)
        result = sum(random.randint(1, diсe_l) for _ in range(count))
         
    return result


"""Сколько мастерства в зависимости от уровня"""
def master_point (level):
    if level <= 3:
        return 2
    elif level > 3 and level <= 6:
        return 3 

"""Сортировка списка персонажей по нужной характеристике"""
def check_characteristic (list_characters, characteristic): # функция сортировки списка врагов по харктеристике
                characters_sorted = sorted(list_characters, key=lambda x: x[characteristic], reverse=True)
                return characters_sorted

"""Кидаю инициативу за n игроков"""
def check_initiative(list_pers):
    for pers in list_pers:
        dice = D20_dice()  # Бросаем D20
        if pers["who_is"] == 1:
            data_base.update_data_base("characters", "initiative", dice, "id", pers["id"])
        else:
            data_base.update_data_base("monsters", "initiative", dice, "id", pers["id"])

"""Определение попадания"""
# если человек: взять топ характеристику, посмотреть какое значение модификатора по 1 и под 2, выбрать больший, затем прибавить мастерство (в зависимости от левела) и прибавить остальные модификаторы
def hit (data, dop_value="0"):
    dice = D20_dice()
    if data["who_is"] == 1: #сначала определяем какие есть основные характеристики у персонажа, если это человек
        a = data["save"].split(" or ")
        if dice == 20:
            print(f"{data['name']} выкидывает критическое попадание!")
            aim = 999
            return aim
        elif dice == 1:
            print(f"{data['name']} выкидывает критический промах!")
            aim = 0
            return aim
        
        characteristic = check_mod(better_value(data, a[0], a[1])) # смотрю какая хар-ка больше
        aim = int(characteristic + master_point(data["level"]) + dice + int(dop_value)) # плюсую мод большей

        if aim >= data['armor_class']:
            print(f"{data['name']} выкидывает попадание {aim} против КД {data['armor_class']}")
            
        else:
            print(f"{data['name']} промахивается, {aim} против КД {data['armor_class']}")
            
    else:
        if dice == 20:
            print(f"{data['name']} выкидывает критическое попадание!")
            aim = 999
            return aim
        elif dice == 1:
            print(f"{data['name']} выкидывает критический промах!")
            aim = 0
            return aim
            
        aim = int(data["aim_bonus"] + data["proficiency_bonus"] + dice + int(dop_value))
        if aim >= data['armor_class']:
            print(f"{data['name']} выкидывает попадание {aim} против КД {data['armor_class']}")
        else:
            print(f"{data['name']} промахивается, {aim} против КД {data['armor_class']}")
    return aim


"""Объединение словарей в список действующих персонажей на сцене"""
def join_characters (value1, value2):
    character = value1 + value2
    return character

"""Функция для расчета модификатора характеристики"""
def check_mod(value_characteristic):
    return (value_characteristic - 10) // 2


"""Установка КД"""
def check_kd (data):
    if data['who_is'] == 1:
        armor_class = data['item_armor_class']
        if '+' in armor_class:
            armor, mod = armor_class.split(' + ')
            if 'Лов' in armor_class:
                mod = int(check_mod(data['dexterity']))
                if 'макс. 2' in armor_class:
                    if mod >= 2:
                        value = int(armor) + 2
                    else: 
                        value = int(armor) + int(mod)
                else:
                    value = int(armor) + int(mod)
        else:
            value = int(armor_class)
    else:
        value = int(data['armor_class'])
    return value
            

"""Определяю КД"""
# def check_kd (data):
#     if data["who_is"] == 1:
#         mod_dext = check_mod(data["dexterity"]) # определение модификатора по ловкости
#         if data["armor_type"] == "light":
#             mod = mod_dext
#         elif data["armor_type"] == "medium":
#             if mod_dext <= 2:
#                 mod = mod_dext
#             else:
#                 mod = 2
#         kd = int(data["item_armor_class"]) + int(mod) # кд от брони усановленное значение + бонусы от типа брони
#     else:
#         kd = data["armor_class"] # Получение кд монстра
#     return kd

"""Определяю урон"""
def damage (data, attack_roll): # Если attack_roll 2000 то это крит
    if data["who_is"] == 1: # если персонаж
        dice_value = data["damage_dice"].lower().split("d") # формат dice "1к6", получаю и разделяю на 1, 6
        dice_value[0], dice_value[1] = int(dice_value[0]), int(dice_value[1])
        roll2 = 0
        roll = 0
        if attack_roll == 999: # если критическая атака, то кидаю в 2 раза больше костей
                dice_value[0] *= 2
        for _ in range(0, dice_value[0]): # теперь бросаем столько раз, сколько собсна написано
            roll += randint(1, dice_value[1]) # получаем дамаге
        if data["features"].lower().find("фехтовальное") >= 0 or data["features"].lower().find("универсальное") >= 0:
            characteristic = check_mod(better_value(data, "strength", "dexterity")) #если фехтовальное или универсальное - то можно использовать ловкость или силу, определеяю чего у перса больше
        else: # если это другой тип, то только по силе смотрю
            characteristic = check_mod(data["strength"])
        if data["count_weapons"] == 2: # если у перса 2 оружия, то 2-е оружие это доп урон
            for _ in range(0, dice_value[0]): # теперь бросаем столько раз, сколько собсна написано 
                roll2 += randint(1, dice_value[1]) # получаем дополнительный дамаге
        else: 
            roll2 = 0 # если 1 оружие, то доп урон = 0
        damage = roll + characteristic + roll2 
    else: # если не человек
        if attack_roll == 999:
            damage = dice(data["damage_dice"])
            damage += dice(data["damage_dice"])
        else:
            damage = dice(data["damage_dice"])

    return damage


"""Считаем хитпоинты"""
def count_hit(data):
    hit_dice = data["hit_dice"]
    constitution = check_mod(data["constitution"])
    hitpoint = int(hit_dice) + constitution
    return hitpoint
    

def choose_target(attacker, fighters):
    if attacker["who_is"] == 1: # Если атакующий это игрок, то
        list_enemies = [] # Создаю список врагов
        
        for defender in fighters: # Прохожусь циклом по списку всех бойцов чтобы понять кто атакует. Надо бы исключить отсюда атакующего, но его и так там не будет если это игрок
            if defender["who_is"] == 2: # если защитник монстр, то записываем во враги
                list_enemies.append(defender) # добавляем в список словарей
                
        if not list_enemies:  # Проверка, есть ли враги. Если список пустой, то:
            print("Перед тобой никого нет.")
            return None
        
        print(f"\n\nХод игрока {attacker['name']}, перед ним:") # Если всё таки кто-то есть
        
        for i, enemy in enumerate(list_enemies, start=1): # i - счет сколько в итоге элементов в списке
            print(f"{i}. 🎯 {enemy['name']} - {enemy['hitpoints']} ХП") # ну тут понятно думаю
        
        while True: 
            try:
                choice = int(input("\nВыбери цель для атаки? (введи номер): "))
                if 1 <= choice <= len(list_enemies):
                    return list_enemies[choice - 1]  # Возвращаем словарь с данными врага
                else:
                    print("Некорректный выбор, попробуй снова.")
            except ValueError:
                print("Ошибка: введи число!")
    
    # Если атакующий - монстр, выбираем игрока с наименьшим ХП
    else:
        list_enemies = [fighter for fighter in fighters if fighter["who_is"] == 1]
        if not list_enemies:
            print("Нет игроков для атаки!")
            return None

        target = min(list_enemies, key=lambda x: x["hitpoints"])  # Находим игрока с наименьшим ХП
        print(f"\n ⚔️  {attacker['name']} атакует {target['name']}!")
        return target

def check_saving(data, characteristic, skill,  value): # проверка спасброска. База данных, характирстика, которая проверяется и значение на которое надо проверить
    dice = D20_dice()
    print(f'{data["name"]} бросает кубик D20 и выпадает {dice}')
    
    if skill in data_base.check_skill(data): # если у персонажа есть указанный скилл, то учитываю его
        dop = master_point(data['level'])
    else:
        dop = 0
    mod = check_mod(data[characteristic]) # беру модификатор характеристи
    result = dice + dop + mod
    print(f"Итого {result} против {value}")
    if result >= value:
        return True
    else:
        return False
    

# Проверка статуса существа

def check_status(fighter):
    if fighter["who_is"] == 1:
        status_fighter = data_base.get_data("status_now", "id_character", fighter["id"]) # Нужно получить данные о статусах атакующего и проверить есть ли в них статус "knock_down"

    else:
        status_fighter = data_base.get_data("status_now", "id_monster", fighter["id"])
        
    return status_fighter
                

# Уменьшение time статусов в функции fight

def reducing_status(fighter, status_fighter):
    for i in status_fighter:
        if i["name_effects"] == "knock_down":
            time = i['time']
            if time <= 0:
                data_base.delete_row("status_now", "id", i["id"])
            else:
                if time == 1:
                    round = "встанет через 1 ход"
                elif time >= 2 and time <= 4:
                    round = f"встанет через {time} хода"
                else:
                    round = f"встанет через {time} ходов"
                time = i['time'] - 1
                data_base.update_data_base("status_now", "time", time, "id", i["id"]) # уменьшаю time на 1 в БД
                print(f"{fighter['name']} сбит с ног и {round}")
                continue