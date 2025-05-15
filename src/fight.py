def fight(list_character_id, list_monster_id):
    # короччче тут должна определяться инициатива, затем сравниваться, а потом будет бой. Вщ 0 идей как это реализоваться нормально

    from data_base import get_character_data, get_monster_data, set_hit, update_data_base, get_data, delete_row, update_kd, get_ability
    from sort import check_initiative, hit, damage, choose_target
    from ability import get_ability_instance

    players, monsters = [], []
    # Загрузка данных о персонажах и монстрах
    
    for i in list_character_id:
        players += get_character_data(i)
    for i in list_monster_id:
        monsters += get_monster_data(i)
    
    all_pers = players + monsters  # объединяем всех участников

    # Обновление инициативы загруженном списке
    check_initiative(all_pers)

    # Установка хитов у персонажа
    set_hit(players)
    update_kd(players)

    def battle_loop(players, monsters):
        fighters = sorted(players + monsters, key=lambda x: x["initiative"], reverse=True)  # Сортируем по инициативе
        
        print("\n🔥 Бой начинается! 🔥")
        
        print(f"\nПервым ходит {fighters[0]['name']}!")
            
        while any(f["who_is"] == 1 and f["hitpoints"] > 0 for f in fighters) and any(f["who_is"] == 2 and f["hitpoints"] > 0 for f in fighters):
            
            for fighter in fighters:
                ''' Блок проверки статусов, из-за которых существо может пропустить ход '''
                if fighter["hitpoints"] <= 0:  # Пропускаем, если у бойца 0 HP
                    continue
                if fighter["who_is"] == 1:
                    status_fighter = get_data("status_now", "id_character", fighter["id"]) # Нужно получить данные о статусах атакующего и проверить есть ли в них статус "knock_down"

                else:
                    status_fighter = get_data("status_now", "id_monster", fighter["id"])
                    
                for i in status_fighter:
                    if i["name_effects"] == "knock_down":
                        time = i['time']
                        if time <= 0:
                            delete_row("status_now", "id", i["id"])
                        else:
                            if time == 1:
                                round = "встанет через 1 ход"
                            elif time >= 2 and time <= 4:
                                round = f"встанет через {time} хода"
                            else:
                                round = f"встанет через {time} ходов"
                            time = i['time'] - 1
                            update_data_base("status_now", "time", time, "id", i["id"]) # уменьшаю time на 1 в БД
                            print(f"{fighter['name']} сбит с ног и {round}")
                            continue
                        
                ''' Блок проверки боя '''
                target = choose_target(fighter, fighters)  # Выбираем цель
                
                if not target:  
                    print(f"{fighter['name']} не видит противников и пропускает ход")
                    continue  # Если нет цели, пропускаем ход
                    
                ''' Блок абилок и их применение в случае наличия '''
            link_rows = get_ability(fighter)
                        
            ability_names = [] # Создаю список чисто названий абилити
            for row in link_rows:
                ability_names.append(row['name'])

            # 4) Применение способностей или обычной атаки
            acted = False
            for name in ability_names:
                try:
                    ability = get_ability_instance(name)
                except KeyError:
                    print(f"Способность '{name}' не зарегистрирована")
                    continue

                if ability.check_conditions(fighter, target): # Если условия абилки выполнены, то
                    ability.apply(fighter, target) # То выполняет абилку
                    acted = True 
                    break

            if not acted: # Если способность не выполнена (по любым причинам), то обычная атака
                # Обычная атака

                roll = hit(fighter)
                if roll >= target['armor_class']:
                    dmg = damage(fighter)
                    target['hitpoints'] -= dmg
                    print(f"⚔️ {fighter['name']} атакует {target['name']} и наносит {dmg} урона! (Осталось {target['hitpoints']} HP)")
                else:
                    print(f"{fighter['name']} промахивается по {target['name']}.")

                if target['hitpoints'] <= 0:
                    print(f"💀 {target['name']} пал в бою!")

        # 5) Обновление HP в базе и удаление павших из списка
        for f in fighters:
            if f['who_is'] == 1:
                update_data_base("characters", "hitpoints", f['hitpoints'], "user_id", f['user_id'])
        fighters = [f for f in fighters if f['hitpoints'] > 0]

    print("\n🏆 Бой окончен! 🏆")

                
    battle_loop(players, monsters)
        