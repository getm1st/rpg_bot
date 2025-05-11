import story.first_quest as first_quest
import story.second_story as second_story

SCENES = {
    1: first_quest.first_quest,
    2: second_story.second_story
}

def main():
    input(f"Нажми Enter, чтобы перейти к 1 главе...")
    print("Добро пожаловать в игру!")
    
    current_scene = 1  # Начинаем с первой сцены
    
    while current_scene in SCENES:
        
        SCENES[current_scene]()  # Запуск сцены
        current_scene += 1  # Переход к следующей сцене

    print("История завершена!")

if __name__ == "__main__":
    main()