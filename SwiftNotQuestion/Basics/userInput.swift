//
//  userInput.swift
//  Swift?NotQuestion
//
//  Created by Валерия Пономарева on 03.02.2026.
//
import Foundation

// ВСПОМОГАТЕЛЬНАЯ ФУНКЦИЯ ТОЛЬКО ДЛЯ ЭТОГО ФАЙЛА
private func printHeader(_ title: String) {
    print("\n" + String(repeating: "=", count: 50))
    print("🎯 \(title)")
    print(String(repeating: "=", count: 50))
}

// ЗАДАЧИ
public func task1() {
    printHeader("Задача 1: Советы по погоде")
    
    let isRaining = safeYesNoInput(prompt: "⛈️  Идет дождь? (да/нет):")
    
    if isRaining {
        print("\n☔️  Совет: Возьмите зонтик!")
    } else {
        let isSunny = safeYesNoInput(prompt: "☀️  Солнечно? (да/нет):")
        
        if isSunny {
            print("\n😎  Совет: Наденьте солнечные очки!")
        } else {
            print("\n👟  Совет: Идеальная погода для прогулки!")
        }
    }
    
    pressEnterToContinue()
}

public func task2() {
    printHeader("Задача 2: Имя и фамилия")
    
    let name = safeStringInput(prompt: "👤 Введите ваше имя:")
    let surname = safeStringInput(prompt: "👤 Введите вашу фамилию:")
    
    print("\n🎉 Результат:")
    print("   Имя: \(name)")
    print("   Фамилия: \(surname)")
    print("   Полное имя: \(name) \(surname)")
    
    pressEnterToContinue()
}

public func task3() {
    printHeader("Задача 3: Стихотворение")
    
    print("""
    Пятнадцать человек на сундук мертвеца!
    Йо-хо-хо, и бутылка рома!
    Пей, и дьявол тебя доведёт до конца!
    Йо-хо-хо, и бутылка рома!
    """)
    
    pressEnterToContinue()
}

// ЗАГЛУШКИ ДЛЯ ОСТАЛЬНЫХ ЗАДАЧ

public func task10() {
    printHeader("Задача 10")
    print("Задача в разработке")
    pressEnterToContinue()
}

public func task11() {
    printHeader("Задача 11")
    print("Задача в разработке")
    pressEnterToContinue()
}

public func task12() {
    printHeader("Задача 12")
    print("Задача в разработке")
    pressEnterToContinue()
}

public func task13() {
    printHeader("Задача 13")
    print("Задача в разработке")
    pressEnterToContinue()
}
