//
//  mathFunctions.swift
//  Swift?NotQuestion
//
//  Created by Валерия Пономарева on 03.02.2026.
//

import Foundation

// Вспомогательная функция для этого файла
private func printHeader(_ title: String) {
    print("\n" + String(repeating: "=", count: 50))
    print("🧮 \(title)")
    print(String(repeating: "=", count: 50))
}

// ============================================
// МАТЕМАТИЧЕСКИЕ ЗАДАЧИ
// ============================================

/// ЗАДАЧА 4: Сумма двух чисел
public func task4() {
    printHeader("Задача 4: Сумма двух чисел")
    
    print("Введите два числа для сложения:")
    
    guard let num1 = safeDoubleInput(prompt: "📥 Число 1:"),
          let num2 = safeDoubleInput(prompt: "📥 Число 2:") else {
        print("❌ Ошибка ввода чисел!")
        pressEnterToContinue()
        return
    }
    
    let sum = num1 + num2
    print("\n✅ Результат:")
    print("   \(num1) + \(num2) = \(sum)")
    
    pressEnterToContinue()
}

/// ЗАДАЧА 5: Деление трех чисел
public func task5() {
    printHeader("Задача 5: Деление трех чисел")
    print("Формула: (a + b) / c")
    
    guard let a = safeDoubleInput(prompt: "📥 Введите число a:"),
          let b = safeDoubleInput(prompt: "📥 Введите число b:"),
          let c = safeDoubleInput(prompt: "📥 Введите число c:"), c != 0 else {
        print("❌ Ошибка: деление на ноль или неверный ввод!")
        pressEnterToContinue()
        return
    }
    
    let result = (a + b) / c
    print("\n✅ Результат:")
    print("   (\(a) + \(b)) / \(c) = \(result)")
    
    pressEnterToContinue()
}

/// ЗАДАЧА 6: Разделение счета
public func task6() {
    printHeader("Задача 6: Разделение счета")
    
    guard let total = safeDoubleInput(prompt: "💰 Общая сумма счета (руб):"),
          total > 0,
          let friends = safeDoubleInput(prompt: "👥 Количество друзей:"),
          friends > 0 else {
        print("❌ Ошибка: введите положительные числа!")
        pressEnterToContinue()
        return
    }
    
    let perPerson = total / friends
    print("\n✅ Результат:")
    print("   Общий счет: \(formatCurrency(total)) руб.")
    print("   Количество друзей: \(Int(friends))")
    print("   С каждого: \(formatCurrency(perPerson)) руб.")
    
    pressEnterToContinue()
}

/// ЗАДАЧА 7: Расстояние до работы
public func task7() {
    printHeader("Задача 7: Расстояние до работы")
    print("Скорость автомобиля: 70 км/ч")
    
    guard let minutes = safeDoubleInput(prompt: "⏱️  Время в пути (минут):"),
          minutes > 0 else {
        print("❌ Ошибка ввода времени!")
        pressEnterToContinue()
        return
    }
    
    let speed = 70.0 // км/ч
    let hours = minutes / 60.0
    let distance = hours * speed
    
    print("\n✅ Результат:")
    print("   Время в пути: \(minutes) мин (\(formatCurrency(hours)) ч)")
    print("   Скорость: \(speed) км/ч")
    print("   Расстояние: \(formatCurrency(distance)) км")
    
    pressEnterToContinue()
}

/// ЗАДАЧА 8: Расстояние в саженях
public func task8() {
    printHeader("Задача 8: Расстояние в саженях")
    print("1 сажень = 2.48 метра")
    
    guard let minutes = safeDoubleInput(prompt: "⏱️  Время в пути (минут):"),
          minutes > 0 else {
        print("❌ Ошибка ввода времени!")
        pressEnterToContinue()
        return
    }
    
    let speedKmH = 70.0
    let hours = minutes / 60.0
    let distanceKm = hours * speedKmH
    let distanceMeters = distanceKm * 1000
    let fathoms = distanceMeters / 2.48
    
    print("\n✅ Результат:")
    print("   Расстояние: \(formatCurrency(distanceKm)) км")
    print("   В метрах: \(formatCurrency(distanceMeters)) м")
    print("   В саженях: \(formatCurrency(fathoms))")
    
    pressEnterToContinue()
}

/// ЗАДАЧА 9: Конвертация времени
public func task9() {
    printHeader("Задача 9: Конвертация времени")
    
    guard let weeks = safeDoubleInput(prompt: "📅 Количество недель:"),
          weeks > 0 else {
        print("❌ Ошибка ввода!")
        pressEnterToContinue()
        return
    }
    
    let days = weeks * 7
    let hours = days * 24
    let minutes = hours * 60
    let seconds = minutes * 60
    
    print("\n✅ Результат для \(weeks) недель:")
    print("   Дней: \(Int(days))")
    print("   Часов: \(Int(hours))")
    print("   Минут: \(Int(minutes))")
    print("   Секунд: \(Int(seconds))")
    
    pressEnterToContinue()
}

/// ЗАДАЧА 19: Конвертер температуры
public func task19() {
    printHeader("Задача 19: Конвертер температуры")
    print("Формула: °F = °C × 9/5 + 32")
    
    guard let celsius = safeDoubleInput(prompt: "🌡️  Введите температуру в °C:"),
          celsius >= -273.15 else {
        print("❌ Ошибка: температура не может быть ниже абсолютного нуля!")
        pressEnterToContinue()
        return
    }
    
    let fahrenheit = celsius * 9/5 + 32
    
    print("\n✅ Результат:")
    print("   \(celsius)°C = \(formatCurrency(fahrenheit))°F")
    
    if fahrenheit > 100 {
        print("   🔥 Жарко!")
    } else if fahrenheit < 32 {
        print("   ❄️  Холодно!")
    }
    
    pressEnterToContinue()
}
