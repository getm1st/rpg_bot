import random
def D20_dice ():
    d20_roll = random.randint(1, 20)
    return d20_roll


def advantage_disadv(advantage: bool): # True если преимущество, False если помеха  
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
    
advantage_disadv(True)

a = "ddew"
print(len(a))

number = int("2")
print(type(number))
if number == int:
    print("Всё получилось")
