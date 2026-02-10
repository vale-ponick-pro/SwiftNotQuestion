//
//  optionals.swift
//  SwiftNotQuestion
//
//  Created by Валерия Пономарева on 09.02.2026.
//

import Foundation
// Вспомогательная функция для этого файла
private func printHeader(_ title: String) {
    print("\(title)")
}
// ❌ Учебные (никогда не используй!)

// ЗАДАЧА 30: Возраст юзера
public func task30() {
    printHeader("Задача 30: Возраст юзера + forse unwrupping")
    
    let input = "21"
    let age = Int(input)! // 🔥 FORCE UNWRAP по заданию!
    print("Next year you will be \(age + 1) year old")
    pressEnterToContinue()
}

// ❌ Учебные (никогда не используй!)

// ЗАДАЧА 31: Возраст юзера
public func task31() {
    printHeader("Задача 31: Возраст юзера + implicitly unwrupping")
    
    let input = "21"

    let ageString: String! = input
    let age: Int! = Int(ageString) // Int(ageString) = Int? → Int! (implicitly unwrapped)
    
print("Next year you will be \(age + 1) year old")
pressEnterToContinue()
}

// ЗАДАЧА 32: Возраст юзера
public func task32() {
    printHeader("Задача 32: Возраст юзера + ✅ optional binding")
    
    let input = "21" // строка

    if let age = Int(input) { // уже число, но БЕЗОПАСНО РАЗВЕРНУЛИ
        print("Next year you will be \(age + 1) year old")
    } else {
        print("❌ Ошибка преобразования!")
    }

pressEnterToContinue()
}

// ЗАДАЧА 33: Возраст юзера
public func task33() {
    printHeader("Задача 33: Возраст юзера + ✅ guard..else")
    
    let input = "21" // 📝 Исходная строка
    // 🔥 1. ВЫРАЖЕНИЕ: Int(input) → Int? (optional!)
    // 🔥 2. ОБЕРНУТО в guard let + return
    guard let age = Int(input)  else { // “проверь условие, ИЛИ останови функцию!”
        print("❌ Ошибка преобразования!") // Если Int(input) = nil
        pressEnterToContinue()
        return // ✅ Выход из функции
    }
    print("Next year you will be \(age + 1) year")   // 🎯 3. ТУТ age = Int (не optional!) → код выполняется
    pressEnterToContinue()
}

// ЗАДАЧА 34: Возраст юзера
public func task34() {
    printHeader("Задача 34: Возраст юзера + ✅ nil-coalescing")
    
    let input = "21"
    
    var age = Int(input) ?? 0 // 🔥 ?? = "если nil → используй значение по умолчанию"
    
    print("Next year you will be \(age + 1) year old")
      pressEnterToContinue()
}
/*
 📚 ЗОЛОТОЙ СТАНДАРТ
 
 guard let value = parseValue(input) else {
     print("Ошибка!")
     return
 }
 Дальше работаем с value (не optional!)
 
 Почему  guard let?
 ✅ Ранний выход = чистый код
 ✅ value доступно ВСЕЙ функцией
 ✅ Стандарт Swift community
 ✅ Легче читать/дебажить
 
 ✅ 99% = guard let
 ✅ ?? = дефолтные значения
 ❌ ! = НИКОГДА в продакшене! */
