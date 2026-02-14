//
//  programManager.swift
//  Swift?NotQuestion
//
//  Created by Валерия Пономарева on 03.02.2026.
//

import Foundation

public func runProgram() {
    print("🚀 ПРОГРАММА ЗАПУЩЕНА!")
    
    while true {
        showMenu()
        
        print("\nВаш выбор (0-37): ", terminator: "")
        guard let input = readLine(),
              let choice = Int(input) else {
            print("Пожалуйста, введите число!")
            continue
        }
        
        if choice == 0 {
            print("\nДо свидания! 👋")
            return
        }
        
        if choice < 1 || choice > 37 {
            print("Неверный выбор! Введите 0-37")
            continue
        }
        
        // ВЫЗЫВАЕМ ЗАДАЧУ
        executeTask(choice)
    }
}

private func showMenu() {
    print("🎯 MAIN MENU")
    print(" 0 — Exit")
    
    print("\n👤 DATA INPUT:")
    print(" 1 — Weather")
    print(" 2 — First and Last Name")
    print(" 3 — Poem")
    print("10 — Full Name")
    print("11 — Name and Weight")
    print("12 — User Information")
    print("13 — User Structure")
    
    print("\n🧮 MATH:")
    print(" 4 — Sum of Two Numbers")
    print(" 5 — Division of Three Numbers")
    print(" 6 — Bill Splitting")
    print(" 7 — Distance to Work")
    print(" 8 — Distance in Fathoms")
    print(" 9 — Time Conversion")
    print("19 — Temperature Converter")
    
    print("\n🧠 LOGIC AND CONDITIONS:")
    print("14 — Number Comparison")
    print("15 — Comparison (via function)")
    print("16 — Birth Year Check")
    print("17 — Birth Year (modern)")
    print("18 — Even/Odd Number")
    print("20 — Programming Language")
    print("21 — Radio/TV")
    print("22 — English Menu")
    print("23 — Menu (dictionary)")
    print("24 — Days of Week")
    print("25 — Days of Week")
    print("26 — Days of Week")
    print("27 — Days of Week")
    print("28 — Days of Week")
    print("29 — Days of Week")
    
    print("\n📊 RANGES AND LOOPS:")
    print("30 — User Age")
    print("31 — User Age")
    print("32 — User Age")
    print("33 — User Age")
    print("34 — User Age")
    print("35 — Range: Pushkin's Lifetime")
    print("36 — Check: Pushkin and Wars")
    print("37 — Counting Letters in Name")
    print("38 — Nested Loops: Hi!")
    print("39 — Name Input: Print 7 Times")
    print("40 — Name Input: Print 7 Times (2)")
    print("41 — Name Input: Letters on New Lines")
    print("42 — Name Input: Print N Times")
    print("43 — Name Input: Choose Output Mode")
    print("44 — Multiplication Table (Single Number)")
    print("45 — Multiplication Table (All Numbers)")
    print("46 — Product of Numbers Made of Ones")
    print("47 — User Info with Loop")
    print("48 — Sum of Numbers Until 100")
    print("49 — Sum of Numbers Until 123")
    print("50 — Birth Year Validation")
}

private func executeTask(_ number: Int) {
    print("📋 ВЫПОЛНЯЕМ ЗАДАЧУ \(number)")
    
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
    case 24: task24()
    case 25: task25()
    case 26: task26()
    case 27: task27()
    case 28: task28()
    case 29: task29()
    case 30: task30()
    case 31: task31()
    case 32: task32()
    case 33: task33()
    case 34: task34()
    case 35: task35()
    case 36: task36()
    case 37: task37()
    case 38: task38()
    case 39: task39()
    case 40: task40()
    case 41: task41()
    case 42: task42()
    case 43: task43()
    case 44: task44()
    case 45: task45()
    case 46: task46()
    case 47: task47()
    case 48: task48()
    case 49: task49()
    case 50: task50()
    default:
        print("Неизвестная задача")
    }
}
