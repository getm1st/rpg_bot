def first_quest():

    import sys
    import os
    sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))
    import data_base
    import sort

    pers = data_base.get_character_data(1) + data_base.get_character_data(2)
    
    opening_text = '''Добро пожаловать в приключение! После успешных и не очень скитаний по миру вы прибыли в город 
Ормвуд – оживлённый торговый узел у реки Блеквуд.\n
Уютная, но слегка потрёпанная таверна, которая собирает внутри себя
местных жителей, работников, да и просто путников. Огоньки от ламп, которые висят при входе — сейчас отражаются
и пляшут от мокрой мостовой, выложенной из камня. Снаружи таверны «Последний мост» уже вечер,
а сам город накрыт довольно прохладным туманом. Туман леденит до костей и заставляет дрожать когда проходишь через него.

Здесь, за столиком у окна, ты сидишь со своим верным спутником - человеком-воином по имени "Дурин". 
Пока Дурин неспешно отпивает эль, ты наблюдаешь за происходящим вокруг, подмечая каждую деталь. Атмосфера наполнена тихими разговорами, 
а в углу слышны отголоски смеха. Ты ловко крадешь кусок хлеба со стола рядом сидящего торговца, пока воин пьёт эль. 
В этот момент в таверну входит мужчина в поношенном плаще и садится за стойку – это Томас Грейсон, клерк 
гильдии, чей вид сразу выдает усталость и разочарование.

Бартон (владелец таверны): «Грейсон! Ты выглядишь так, будто дьявол тебя выжал и выбросил.»
Томас Грейсон (вздыхает, пьёт эль): «Именно так я себя и чувствую.»
Полурослик-плут (тихо воину): «Что-то мне подсказывает, этот парень в отчаянии.»
Человек-воин: «Если в отчаянии – может, у него есть работа.»
'''
    accept_quest = '''Человек-воин: «Что значит "неладное"?»
Томас Грейсон: «Он не объяснил, но приложил старые записки какого-то Чарльза Буна, 
который тоже когда-то изучал этот город. Всё это звучало как чушь – что-то о древнем зле, 
которое пробудилось… В общем, гильдия хотела послать кого-то опытного, но...» (он делает паузу и смотрит в кружку) 
«Никто не хочет идти. Все, кто знает про этот город, держатся подальше.»
Полурослик-плут (улыбается): «Но мы-то, уважаемый, ничего не знаем. Расскажите нам ещё,
чтобы мы поняли, с чем нам придётся столкнуться, прежде чем согласимся пустить нос в этот тёмный угол мира.»
Томас Грейсон (смеётся): «Вот именно.»
Человек-воин (с легкой настороженностью): «Что именно видел священник? Какие знаки зла?»
Томас Грейсон (с тяжёлым вздохом): «В письме не указано всё в деталях, но записи Буна намекают на древние ритуалы, 
проклятия и пробуждение сил, давным-давно погребённых. И это место… там творится нечто, 
что даже местные жители боятся упоминать вслух.»
Человек-воин: «Оплата?»
Томас Грейсон: «Солидная. Гильдия выделила неплохую сумму – если вернётесь и принесёте доказательства.»
Полурослик-плут: «А если не вернёмся?»
Томас Грейсон: «Тогда ваша доля достанется тем, кто вас искать пойдёт. Городок полон тайн, 
а первые знаки зла уже проявились на дороге к нему. Вы увидите следы – странные отметины, холодный, 
пронизывающий воздух…» 
Человек-воин (твёрдо): «Мы возьмём это задание. Я так понял жители есть только в соседней деревне? 
Значит поедем сначала в деревню, как до неё добраться?»
Томас Грейсон: «Я отмечу деревню на вашей карте, а еще держите письмо и эти записки. 
Пусть они станут для вас путеводной нитью в Иерусалимове Уделе. Только берегитесь – 
там каждый камень хранит свою историю,а тьма не прощает ошибок.»
(После короткого обсуждения игроки соглашаются. Томас Грейсон передаёт им письмо 
от отца Гидеона и старые записи Чарльза Буна.) ''' # Принятие квеста в ветках, где не сразу подходят к Грейсону

    successfull_listen_In = '''Томас Грейсон (тихо, почти шёпотом):
«Задание поступило, не самое приятное, но кто-то должен его выполнить. Неделю назад из деревушки 
Причер Корнерс рядом с заброшенным городом Иерусалимов Удел пришло письмо от отца Гидеона, священника 
братства Святого Авгура. Он писал, что столкнулся с чем-то необъяснимым, неведомым… и просил помощи. 
К письму приложены старые записки Чарльза Буна – человека, который когда-то пытался разобраться 
в тайнах того места. Гильдия хотела послать кого-то опытного, но… никто не решается идти туда.»
После короткой паузы, Полурослик-плут, с легкой усмешкой, решает не терять момент и, 
немного сблизившись с Грейсоном, задаёт вопрос:
Полурослик-плут:
«Извините, господин Грейсон, не могли бы вы рассказать подробнее? 
Мы ведь до сих пор не знаем, с чем нам придётся иметь дело…»

Томас Грейсон (смотрит на них, вздыхает): «Вы вероятно слышали, что я упоминал отца Гидеона. 
Так вот он писал, что что-то неладное происходит в заброшенном городе “Жребий Иерусалима”. 
Он столкнулся с чем-то необъяснимым, неведомым… и просил помощи»'''

    sort.type_text(opening_text)
    
    def steal_bread():
        while True:
            try:
                choice = int(input("Ты можешь подойти сам, или продолжить слушать\n1. Подойти к барной стойке. \n2. Продолжить слушать разговор.\nВведи значение: "))

                if choice == 1: # Подойти
                    return 1
                elif choice == 2: # Слушать дальше
                    return 2
                    
                else:
                    print("Неверное значение, введи 1, или 2")
                    
            except ValueError:
                        print("Ошибка: введи число!")
                        
    first_step = int(steal_bread())
    
    sort.type_text('''
Бартон: «Что за беда в этот раз?»
Томас Грейсон: «Снова эта проклятая гильдия… Нет нормальных наёмников, остались одни пьянчуги и трусы.»
Бартон: «Ох, да ладно тебе, Томас.
        ''')

# Реплика окончания принятия квеста 
    last_line =  '''Человек-воин: «Что значит "неладное"?»
Томас Грейсон: «Он не объяснил, но приложил старые записки какого-то Чарльза Буна, 
который тоже когда-то изучал этот город. Всё это звучало как чушь – что-то о древнем зле, 
которое пробудилось… В общем, гильдия хотела послать кого-то опытного, но...» (он делает паузу и смотрит в кружку) 
«Никто не хочет идти. Все, кто знает про этот город, держатся подальше.»
Полурослик-плут (улыбается): «Но мы-то, уважаемый, ничего не знаем. Расскажите нам ещё,
чтобы мы поняли, с чем нам придётся столкнуться, прежде чем согласимся пустить нос в этот тёмный угол мира.»
Томас Грейсон (смеётся): «Вот именно.»
Человек-воин (с легкой настороженностью): «Что именно видел священник? Какие знаки зла?»
Томас Грейсон (с тяжёлым вздохом): «В письме не указано всё в деталях, но записи Буна намекают на древние ритуалы, 
проклятия и пробуждение сил, давным-давно погребённых. И это место… там творится нечто, 
что даже местные жители боятся упоминать вслух.»
Человек-воин: «Оплата?»
Томас Грейсон: «Солидная. Гильдия выделила неплохую сумму – если вернётесь и принесёте доказательства.»
Полурослик-плут: «А если не вернёмся?»
Томас Грейсон: «Тогда ваша доля достанется тем, кто вас искать пойдёт. Городок полон тайн, 
а первые знаки зла уже проявились на дороге к нему. Вы увидите следы – странные отметины, холодный, 
пронизывающий воздух…» 
Человек-воин (твёрдо): «Мы возьмём это задание. Я так понял жители есть только в соседней деревне? 
Значит поедем сначала в деревню, как до неё добраться?»
Томас Грейсон: «Я отмечу деревню на вашей карте, а еще держите письмо и эти записки. 
Пусть они станут для вас путеводной нитью в Иерусалимове Уделе. Только берегитесь – 
там каждый камень хранит свою историю,а тьма не прощает ошибок.»
(После короткого обсуждения игроки соглашаются. Томас Грейсон передаёт им письмо 
от отца Гидеона и старые записи Чарльза Буна.)

            '''
            
    if first_step == 1:
        sort.type_text(f"""Человек-воин (наклоняясь к плуту, тихо):
«Звучит, как шанс для нас...»
После короткой паузы, Полурослик-плут, с легкой усмешкой, решает не терять момент и встает из-за стола. 
Немного сблизившись с Грейсоном, {pers[0]["name"]} задаёт вопрос:
{pers[0]["name"]}:
«Извините, господин Грейсон, не могли бы вы рассказать подробнее? 
Мы ведь до сих пор не знаем, с чем нам придётся иметь дело…»

«Задание поступило, не самое приятное, но кто-то должен его выполнить. 
Неделю назад из деревушки Причер Корнерс рядом с заброшенным городом Иерусалимов Удел 
пришло письмо от отца Гидеона, священника братства Святого Авгура. Он писал, что столкнулся 
с чем-то необъяснимым, неведомым… и просил помощи. К письму приложены старые записки 
Чарльза Буна – человека, который когда-то пытался разобраться в тайнах того места. 
Гильдия хотела послать кого-то опытного, но… никто не решается идти туда.»

Томас Грейсон (смотрит на них, вздыхает): «Отец Гидеон писал, что что-то неладное происходит 
в заброшенном городе “Жребий Иерусалима”. Он столкнулся с чем-то необъяснимым, неведомым… и просил помощи»
    """)
        sort.type_text(last_line)
    
    elif first_step == 2:
        sort.type_text('''
В этот момент рядом за столиком рыжебородный лысый дворф вмиг заливается хохотом, а его напарники начинают громко обсуждать
то, как этот лысый дворф дал деру от слепого циклопа, который не пустил его в пещеру. 
Чтобы услышать о чем говорит за барной стойкой Грейсон — надо прислушаться. Брось кубик D20 для проверки внимания: 
            ''')
        user_answer = int(input('Для броска кубика напиши "20". \nВведи значение: '))
        
        if user_answer == 20:
            check1 = sort.check_saving(pers[0], "wisdom", "Внимательность", 12)
            
        if check1 == True:
            sort.type_text(f'''Вы проходите проверку внимательности, {pers[0]["name"]} закрывает глаза и прислушивается к тому, 
что происходит за барной стойкой, он слышит диалог:
                ''')
            
            sort.type_text(successfull_listen_In) # 
            
            sort.type_text(accept_quest)
            
        else:
            sort.type_text(f'''{pers[0]['name']} не может расслышать что происходит за барной стойкой
                
Полурослик-плут(наклонясь к войну): «Слушай, дружище, попробуй ты послушать.»''')
            check2 = sort.check_saving(pers[1], "wisdom", "Внимательность", 12)
            
            if check2 == True:
                sort.type_tex(f'''Вы проходите проверку внимательности, {pers[1]["name"]} закрывает глаза и прислушивается к тому, 
что происходит за барной стойкой, он слышит диалог:''')
                
                sort.type_text(successfull_listen_In)

                sort.type_text(accept_quest)
            else: 
                sort.type_text('''Вы слышате лишь отдельные фразы: «...Иерусалимов Удел… письмо... священник… древние записи…» – остаётся только додумывать детали.
    Странник: «Уже чувствую, что это будет весёлое задание. Думаю стоит подойти и разузнать, иначе упустим шанс»
    После короткой паузы, Полурослик-плут, с легкой усмешкой, решает не терять момент и, 
немного сблизившись с Грейсоном, задаёт вопрос:
Полурослик-плут:
«Извините, господин Грейсон, не могли бы вы рассказать подробнее? 
Мы ведь до сих пор не знаем, с чем нам придётся иметь дело…»

«Задание поступило, не самое приятное, но кто-то должен его выполнить. 
Неделю назад из деревушки Причер Корнерс рядом с заброшенным городом Иерусалимов Удел 
пришло письмо от отца Гидеона, священника братства Святого Авгура. Он писал, что столкнулся 
с чем-то необъяснимым, неведомым… и просил помощи. К письму приложены старые записки 
Чарльза Буна – человека, который когда-то пытался разобраться в тайнах того места. 
Гильдия хотела послать кого-то опытного, но… никто не решается идти туда.»

Томас Грейсон (смотрит на них, вздыхает): «Отец Гидеон писал, что что-то неладное происходит 
в заброшенном городе “Жребий Иерусалима”. Он столкнулся с чем-то необъяснимым, неведомым… и просил помощи»
    ''')
                sort.type_text(accept_quest)