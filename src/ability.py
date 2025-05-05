class Ability:
    def check_conditions(self, attacker, target):
        raise NotImplementedError("Необходимо переопределить метод check_conditions")

    def apply(self, attacker, target):
        raise NotImplementedError("Необходимо переопределить метод apply")

# Пример способности волка — укус с возможностью сбить с ног
class Bite_KnockDown(Ability):
    def check_conditions(self, attacker, target):
        return True  # Всегда проверяется, можно добавить проверку на уже сбитость

    def apply(self, attacker, target):
        from data_base import add_status
        import random

        print(f"{attacker['name']} кусает {target['name']}, пытаясь сбить с ног!")
        success = random.randint(1, 20) + attacker.get("strength_mod", 0) >= 12  # Пример Сл
        if success:
            add_status("knock_down", target)
            print(f"{target['name']} сбит с ног!")
        else:
            print(f"{target['name']} устоял на ногах.")

# Пример способности плута — скрытая атака
class Sneak_Attack(Ability):
    def check_conditions(self, attacker, target):
        return attacker.get("dexterity", 0) > target.get("wisdom", 0)

    def apply(self, attacker, target):
        from sort import damage
        damage_value = damage(attacker) + 6  # Доп. урон от скрытой атаки
        target["hitpoints"] -= damage_value
        print(f"💥 {attacker['name']} проводит скрытную атаку по {target['name']} и наносит {damage_value} урона!")
