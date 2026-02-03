//
//  logicAndMenus.swift
//  Swift?NotQuestion
//
//  Created by Валерия Пономарева on 03.02.2026.
//

import Foundation

// Вспомогательная функция для этого файла
private func printHeader(_ title: String) {
    print("\n" + String(repeating: "=", count: 50))
    print("🧠 \(title)")
    print(String(repeating: "=", count: 50))
}

// ============================================
// ЛОГИЧЕСКИЕ ЗАДАЧИ
// ============================================

/// ЗАДАЧА 14: Сравнение чисел (базовое)
public func task14() {
    printHeader("Задача 14: Сравнение чисел")
    
    guard let num1 = safeDoubleInput(prompt: "📥 Введите первое число:"),
          let num2 = safeDoubleInput(prompt: "📥 Введите второе число:") else {
        print("❌ Ошибка ввода!")
        pressEnterToContinue()
        return
    }
    
    print("\n🔍 Результат сравнения:")
    
    if num1 > num2 {
        print("   \(num1) > \(num2)")
        print("   Большее: \(num1)")
        print("   Меньшее: \(num2)")
    } else if num1 < num2 {
        print("   \(num1) < \(num2)")
        print("   Большее: \(num2)")
        print("   Меньшее: \(num1)")
    } else {
        print("   \(num1) = \(num2)")
        print("   Числа равны")
    }
    
    pressEnterToContinue()
}

/// ЗАДАЧА 15: Сравнение чисел (через функцию)
public func task15() {
    printHeader("Задача 15: Сравнение через функцию")
    
    guard let num1 = safeDoubleInput(prompt: "📥 Введите первое число:"),
          let num2 = safeDoubleInput(prompt: "📥 Введите второе число:") else {
        print("❌ Ошибка ввода!")
        pressEnterToContinue()
        return
    }
    
    // Функция сравнения
    func compareNumbers(_ a: Double, _ b: Double) -> (larger: Double, smaller: Double) {
        return a >= b ? (a, b) : (b, a)
    }
    
    let (larger, smaller) = compareNumbers(num1, num2)
    
    print("\n🔍 Результат сравнения:")
    print("   Первое число: \(num1)")
    print("   Второе число: \(num2)")
    print("   Большее: \(larger)")
    print("   Меньшее: \(smaller)")
    
    if num1 == num2 {
        print("   ⚠️  Числа равны!")
    }
    
    pressEnterToContinue()
}

/// ЗАДАЧА 16: Проверка года рождения
public func task16() {
    printHeader("Задача 16: Проверка года рождения")
    
    let currentYear = Calendar.current.component(.year, from: Date())
    
    guard let year = safeIntInput(prompt: "📅 Введите год рождения (1900-\(currentYear)):") else {
        print("❌ Ошибка ввода!")
        pressEnterToContinue()
        return
    }
    
    if year >= 1900 && year <= currentYear {
        print("\n✅ Год \(year) - корректный!")
        let age = currentYear - year
        print("   Вам примерно \(age) лет")
    } else {
        print("\n❌ Год \(year) - некорректный!")
        print("   Должен быть между 1900 и \(currentYear)")
    }
    
    pressEnterToContinue()
}

/// ЗАДАЧА 17: Год рождения (современная версия)
public func task17() {
    printHeader("Задача 17: Год рождения (современная)")
    
    let currentYear = Calendar.current.component(.year, from: Date())
    
    print("📅 Введите год рождения (1900-\(currentYear)): ", terminator: "")
    
    if let input = readLine(),
       let year = Int(input.trimmingCharacters(in: .whitespaces)) {
        
        if year >= 1900 && year <= currentYear {
            print("\n✅ Спасибо! Ваш год рождения: \(year)")
            
            let age = currentYear - year
            if age >= 0 && age <= 120 {
                print("   Вам \(age) лет")
                
                if age < 18 {
                    print("   👶 Вы несовершеннолетний")
                } else if age < 60 {
                    print("   👨‍💼 Вы взрослый")
                } else {
                    print("   👵 Вы пенсионер")
                }
            }
        } else {
            print("\n❌ Невозможно! Некорректный год.")
        }
    } else {
        print("\n❌ Ошибка ввода!")
    }
    
    pressEnterToContinue()
}

/// ЗАДАЧА 18: Четность числа
public func task18() {
    printHeader("Задача 18: Проверка четности числа")
    
    guard let number = safeIntInput(prompt: "🔢 Введите целое число:") else {
        print("❌ Ошибка ввода!")
        pressEnterToContinue()
        return
    }
    
    print("\n🔍 Результат проверки:")
    print("   Число: \(number)")
    
    if number % 2 == 0 {
        print("   ✅ Четное")
        
        if number % 4 == 0 {
            print("   🔸 Делится на 4")
        }
        if number % 10 == 0 {
            print("   🔸 Делится на 10")
        }
    } else {
        print("   ⚠️  Нечетное")
        
        if number % 3 == 0 {
            print("   🔸 Делится на 3")
        }
        if number % 5 == 0 {
            print("   🔸 Делится на 5")
        }
    }
    
    pressEnterToContinue()
}

/// ЗАДАЧА 20: Язык программирования
public func task20() {
    printHeader("Задача 20: Любимый язык программирования")
    
    let language = safeStringInput(prompt: "💻 Введите ваш любимый язык программирования:")
    
    print("\n🤔 Ваш выбор: \(language)")
    
    switch language.lowercased() {
    case "swift":
        print("   🚀 Отличный выбор! Swift - будущее!")
        print("   🌟 Рекомендуем: SwiftUI, Combine")
        
    case "python":
        print("   🐍 Python - мощный и простой!")
        print("   🌟 Рекомендуем: Django, NumPy")
        
    case "javascript", "js":
        print("   ⚡ JavaScript - вездесущий!")
        print("   🌟 Рекомендуем: React, Node.js")
        
    case "java":
        print("   ☕ Java - проверенный временем!")
        print("   🌟 Рекомендуем: Spring, Android")
        
    case "c#", "csharp":
        print("   🎮 C# - от Microsoft!")
        print("   🌟 Рекомендуем: .NET, Unity")
        
    case "kotlin":
        print("   📱 Kotlin - современный Java!")
        print("   🌟 Рекомендуем: Android разработка")
        
    case "go", "golang":
        print("   🐹 Go - от Google!")
        print("   🌟 Рекомендуем: микросервисы")
        
    case "rust":
        print("   🦀 Rust - безопасный и быстрый!")
        print("   🌟 Рекомендуем: системное программирование")
        
    default:
        print("   📚 Интересный выбор!")
        print("   💡 Советуем попробовать Swift!")
    }
    
    pressEnterToContinue()
}

/// ЗАДАЧА 21: Радио/ТВ
public func task21() {
    printHeader("Задача 21: Выбор: Радио или ТВ")
    
    print("📻 1 - Включить радио")
    print("📺 2 - Включить телевизор")
    print("🚪 3 - Выход")
    
    guard let choice = safeIntInput(prompt: "\n🎛️  Ваш выбор (1-3):") else {
        print("❌ Ошибка ввода!")
        pressEnterToContinue()
        return
    }
    
    switch choice {
    case 1:
        print("\n📻 Включаем радио...")
        print("   🎶 Играет: последние хиты")
        print("   🔊 Громкость: средняя")
        print("   📡 Частота: 101.2 FM")
        
    case 2:
        print("\n📺 Включаем телевизор...")
        print("   📺 Канал: Новостной")
        print("   🎬 Программа: Вечерние новости")
        print("   🔉 Громкость: нормальная")
        
    case 3:
        print("\n🚪 Выходим...")
        
    default:
        print("\n❌ Неверный выбор!")
    }
    
    pressEnterToContinue()
}

/// ЗАДАЧА 22: Английское меню (простое)
public func task22() {
    printHeader("Задача 22: Английское меню")
    
    print("\n🍽️  ВЫБЕРИТЕ БЛЮДО")
    print(String(repeating: "=", count: 30))
    print("1 - Салаты (Salads)")
    print("2 - Супы (Soups)")
    print("3 - Основные блюда (Main Dishes)")
    print(String(repeating: "=", count: 30))
    
    guard safeIntInput(prompt: "\n📋 Категория (1-3):") != nil else {
        print("❌ Ошибка ввода категории!")
        pressEnterToContinue()
        return
    }
    
    print("\n🌱 ВЫБЕРИТЕ ТИП ПИТАНИЯ")
    print(String(repeating: "=", count: 30))
    print("1 - Мясо (Meat)")
    print("2 - Рыба (Fish)")
    print("3 - Вегетарианское (Vegan)")
    print(String(repeating: "=", count: 30))
    
    guard safeIntInput(prompt: "\n🥗 Тип питания (1-3):") != nil else {
        print("❌ Ошибка ввода типа!")
         pressEnterToContinue()
         return
     }
 }
/// ЗАДАЧА 23: Меню ресторана (рефакторинг со словарём)
public func task23() {
    printHeader("Задача 23: Меню ресторана")
    
    print("""
    🍽️  ДОБРО ПОЖАЛОВАТЬ В РЕСТОРАН "SWIFT BISTRO"!
    Выберите категорию блюд и конкретное блюдо из меню.
    """)
    
    // Словарь с меню ресторана
    let restaurantMenu: [String: [Int: (name: String, price: Int)]] = [
        "САЛАТЫ": [
            1: (name: "🥗 Цезарь с курицей", price: 450),
            2: (name: "🥬 Греческий салат", price: 380),
            3: (name: "🍤 Салат с креветками", price: 520)
        ],
        "СУПЫ": [
            1: (name: "🍲 Том Ям с креветками", price: 550),
            2: (name: "🥣 Тыквенный крем-суп", price: 350),
            3: (name: "🍜 Борщ с говядиной", price: 420)
        ],
        "ОСНОВНЫЕ БЛЮДА": [
            1: (name: "🥩 Стейк Рибай", price: 1200),
            2: (name: "🍝 Паста Карбонара", price: 650),
            3: (name: "🍣 Роллы Филадельфия", price: 850)
        ],
        "НАПИТКИ": [
            1: (name: "🍹 Фреш апельсиновый", price: 250),
            2: (name: "🧃 Морс клюквенный", price: 200),
            3: (name: "☕ Капучино", price: 300)
        ],
        "ДЕСЕРТЫ": [
            1: (name: "🍰 Чизкейк Нью-Йорк", price: 400),
            2: (name: "🍫 Шоколадный фондан", price: 350),
            3: (name: "🍮 Тирамису", price: 450)
        ]
    ]
    
    // Показываем категории
    print("\n" + String(repeating: "=", count: 40))
    print("📋 КАТЕГОРИИ МЕНЮ")
    print(String(repeating: "=", count: 40))
    
    let categories = Array(restaurantMenu.keys).sorted()
    for (index, category) in categories.enumerated() {
        print("\(index + 1). \(category)")
    }
    
    print(String(repeating: "=", count: 40))
    
    // Выбор категории
    guard let categoryChoice = safeIntInput(prompt: "\n📥 Выберите категорию (1-\(categories.count)):"),
          categoryChoice >= 1 && categoryChoice <= categories.count else {
        print("❌ Неверный выбор категории!")
        pressEnterToContinue()
        return
    }
    
    let selectedCategory = categories[categoryChoice - 1]
    let categoryItems = restaurantMenu[selectedCategory]!
    
    // Показываем блюда в выбранной категории
    print("\n" + String(repeating: "=", count: 40))
    print("🍽️  \(selectedCategory)")
    print(String(repeating: "=", count: 40))
    
    for (number, item) in categoryItems.sorted(by: { $0.key < $1.key }) {
        print("\(number). \(item.name) - \(item.price) руб.")
    }
    
    print(String(repeating: "=", count: 40))
    
    // Выбор блюда
    guard let dishChoice = safeIntInput(prompt: "\n📥 Выберите номер блюда (1-3):"),
          dishChoice >= 1 && dishChoice <= 3 else {
        print("❌ Неверный выбор блюда!")
        pressEnterToContinue()
        return
    }
    
    guard let selectedDish = categoryItems[dishChoice] else {
        print("❌ Блюдо не найдено!")
        pressEnterToContinue()
        return
    }
    
    // Итоговый заказ
    print("\n" + String(repeating: "⭐", count: 45))
    print("✅ ВАШ ЗАКАЗ ПРИНЯТ!")
    print(String(repeating: "⭐", count: 45))
    print("\n📋 ДЕТАЛИ ЗАКАЗА:")
    print("   Категория: \(selectedCategory)")
    print("   Блюдо: \(selectedDish.name)")
    print("   Цена: \(selectedDish.price) руб.")
    print("   Номер заказа: #\(Int.random(in: 1000...9999))")
    print("   Примерное время: \(Int.random(in: 15...40)) мин")
    
    // Дополнительная информация
    if selectedCategory == "ДЕСЕРТЫ" {
        print("   🍨 К блюду идёт шарик мороженого в подарок!")
    } else if selectedCategory == "НАПИТКИ" {
        print("   🧊 Напиток подаётся со льдом")
    } else {
        print("   🥖 К блюду идёт хлебная корзинка")
    }
    
    print("\n💳 ИТОГО К ОПЛАТЕ: \(selectedDish.price) руб.")
    print(String(repeating: "⭐", count: 45))
    print("\n🍴 Приятного аппетита! Ожидайте официанта.")
    
    pressEnterToContinue()
}
