//
//  programManager.swift
//  Swift?NotQuestion
//
//  Created by Валерия Пономарева on 03.02.2026.
//

import Foundation

public func runProgram() {
    print(String(repeating: "=", count: 50))
    print("🚀 ПРОГРАММА ЗАПУЩЕНА!")
    print(String(repeating: "=", count: 50))
    
    while true {
        showMenu()
        
        print("\nВаш выбор (0-23): ", terminator: "")
        guard let input = readLine(),
              let choice = Int(input) else {
            print("Пожалуйста, введите число!")
            continue
        }
        
        if choice == 0 {
            print("\nДо свидания! 👋")
            return
        }
        
        if choice < 1 || choice > 23 {
            print("Неверный выбор! Введите 0-23")
            continue
        }
        
        // ВЫЗЫВАЕМ ЗАДАЧУ
        executeTask(choice)
    }
}

private func showMenu() {
    print("\n" + String(repeating: "=", count: 50))
    print("🎯 ГЛАВНОЕ МЕНЮ")
    print(String(repeating: "=", count: 50))
    print(" 0 — Выход")
    
    print("\n👤 ВВОД ДАННЫХ:")
    print(" 1 — Погода")
    print(" 2 — Имя и фамилия")
    print(" 3 — Стихотворение")
    print("10 — Полное имя")
    print("11 — Имя и вес")
    print("12 — Информация о пользователе")
    print("13 — Структура пользователя")
    
    print("\n🧮 МАТЕМАТИКА:")
    print(" 4 — Сумма двух чисел")
    print(" 5 — Деление трёх чисел")
    print(" 6 — Разделение счёта")
    print(" 7 — Расстояние до работы")
    print(" 8 — Расстояние в саженях")
    print(" 9 — Конвертация времени")
    print("19 — Конвертер температуры")
    
    print("\n🧠 ЛОГИКА И УСЛОВИЯ:")
    print("14 — Сравнение чисел")
    print("15 — Сравнение (через функцию)")
    print("16 — Проверка года рождения")
    print("17 — Год рождения (современная)")
    print("18 — Четность числа")
    print("20 — Язык программирования")
    print("21 — Радио/ТВ")
    print("22 — Английское меню")
    print("23 — Меню (словарь)")
    
    print(String(repeating: "=", count: 50))
}

private func executeTask(_ number: Int) {
    print("\n" + String(repeating: "=", count: 50))
    print("📋 ВЫПОЛНЯЕМ ЗАДАЧУ \(number)")
    print(String(repeating: "=", count: 50))
    
    switch number {
    case 1: task1()
    case 2: task2()
    case 3: task3()
    case 4: task4()
    case 5: task5()
    case 6: task6()
    case 7: task7()
    case 8: task8()
    case 9: task9()
    case 10: task10()
    case 11: task11()
    case 12: task12()
    case 13: task13()
    case 14: task14()
    case 15: task15()
    case 16: task16()
    case 17: task17()
    case 18: task18()
    case 19: task19()
    case 20: task20()
    case 21: task21()
    case 22: task22()
    case 23: task23()
    default:
        print("Неизвестная задача")
    }
}
