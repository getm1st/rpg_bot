# ability.py

import random
from data_base import insert_status, update_data_base
from sort import hit, damage, dice, check_status

class Ability:
    """
    Базовый класс для всех способностей.
    Методы:
      - check_conditions(attacker, target) -> bool
      - apply(attacker, target) -> None
    """
    def check_conditions(self, attacker, target):
        raise NotImplementedError("Необходимо переопределить метод check_conditions")

    def apply(self, attacker, target):
        raise NotImplementedError("Необходимо переопределить метод apply")

# -------------------
# Пример способностей
# -------------------

class Bite_KnockDown(Ability):
    """
    Укус: всегда доступен, шанс сбить с ног.
    """
    def check_conditions(self, attacker, target):
        return True

    def apply(self, attacker, target):
        print(f"{attacker['name']} кусает {target['name']}, пытаясь сбить с ног!")
        roll = random.randint(1, 20) + attacker.get('strength_mod', 0)
        if roll >= target.get('armor_class', 10):
            insert_status(target, '12', 1)
            print(f"{target['name']} сбит с ног!")
        else:
            print(f"{target['name']} устоял на ногах.")

class Sneak_Attack(Ability):
    """
    Скрытая атака: дополнительный урон, если условия выполнены.
    """
    def check_conditions(self, attacker, target):
        return attacker.get('dexterity', 0) > target.get('wisdom', 0)

    def apply(self, attacker, target):
        extra = 6
        dmg = damage(attacker) + extra
        target['hitpoints'] -= dmg
        print(f"💥 {attacker['name']} наносит скрытную атаку и доп. урон {dmg}!")

class Drawing_Strength(Ability):
    """
    Некротическая атака со снижением Силы.
    """
    def check_conditions(self, attacker, target):
        return True

    def apply(self, attacker, target):
        roll = hit(attacker)
        if roll >= target['armor_class']:
            necro = dice('2d6')
            
            target['hitpoints'] -= necro
            
            # сколько сил отнять
            drain = dice('1d4')
            print(f'Тень тянется к жизненной силе {target['name']} и поглощает {drain} его энергии становясь чуть темнее. ⚔️ Нанесено {necro} урона! ⚔️')
            strength = target['strength'] - drain # Определяю какое значение силы внести в таблицу 
            update_data_base('characters','strength', strength, 'user_id', target['id']) # Меняю значение силы противника на strength
            # записываем статус с параметром drain
            
            print(f"{target['name']} теряет {drain} очков Силы до отдыха!")
            
            status = check_status(target)
            check = False
            
            for i in status:
                if i['status_id'] == 16:
                    check = i['effect_value']
                else:
                    next
            
            if check:
                end_effect = check + drain
            else:
                end_effect = drain
            
            insert_status(
                status_id = 16,
                creature = target,
                remaining_time = None,      # этот эффект до отдыха
                effect_value = end_effect,       # конкретное число
                effect_meta = None          # можно не заполнять
            )
# -------------------
# Регистрация способностей
# -------------------

ABILITY_REGISTRY = {
    'bite_knockdown': Bite_KnockDown,
    'sneak_attack': Sneak_Attack,
    'drawing_strength': Drawing_Strength,
}



def get_ability_instance(name):
    """
    Возвращает экземпляр класса способности по её snake_case имени.
    """
    print(f"Ищем способность в реестре: {name}")
    cls = ABILITY_REGISTRY.get(name)
    if not cls:
        raise KeyError(f"Способность '{name}' не зарегистрирована")
    return cls()
