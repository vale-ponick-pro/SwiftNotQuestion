//
//  basics.swift
//  Swift?NotQuestion
//
//  Created by Валерия Пономарева on 26.01.2026.
//

import Foundation

// --- ГЛАВНАЯ ФУНКЦИЯ ---
func runProgram() {
    task1()
    task2()
    task3()
    task4()
    task5()
    task6()
    task7()
    task8()
    task9()
    task10()
    task11()
    task12()
    task13()
    task14()
    task15()
    task16()
    task17()
    task18()
    task19()
    task20()
}

func task1() {
    print("Task 1: Введи свое имя:")
    guard let name = readLine(), !name.isEmpty else {
        print("Имя не введено")
        return
    }
    print("Hi, \(name)") // Hi, vale!
}

func task2() {
    print("Task 2: Введи свое имя:")
    guard let name = readLine()?.trimmingCharacters(in: .whitespaces) else { return }
    print("Введи фамилию:")
    guard let surname = readLine()?.trimmingCharacters(in: .whitespaces) else { return }
    
    print("Hello, \(name) \(surname)")
}

func task3() {
    print("Task 3: введи стихи построчно:")
    print("""
    Fifteen men on the dead man'schest -
    Yo-ho-h0 and the bottle of rum!
    Drink and the devil had done for the rest -
    Yo-ho-h0 and the bottle of rum!
    """)
}

func safeDoubleInput(prompt: String) -> Double? { // функция "безопасный ввод числа" с параметром-строкой подсказки и -> Double?
    print(prompt)
    guard let input = readLine(), // читаем строку из консоли
          let value = Double(     // пытаемся преобразовать в Double
              input.trimmingCharacters(in: .whitespaces) // убираем пробелы по краям
          ) else {
        print("Incorrect number format") // если не получилось получить число
        return nil                       // возвращаем nil
    }
    return value                         // если всё ок — возвращаем число
}
/* Кратко по смыслу строк:
 •     prompt: String  — входящий параметр, текст подсказки.
 •     -> Double?  — функция может вернуть число или  nil , если ввод плохой.
 •     guard let input = readLine()  — безопасно разворачиваем строку из консоли, если нет ввода — сразу  else .
 •     input.trimmingCharacters(in: .whitespaces)  — убираем пробелы слева/справа, чтобы  "  12  "  тоже считалось числом.
 •     Double(...)  — попытка преобразовать строку в число; если не удалось, будет  nil , сработает  else . */

func task4() {
    print("Task 4:")
    guard let a = safeDoubleInput(prompt: "Введи число № 1:"),
          let b = safeDoubleInput(prompt: "Введи число № 2:") else { return }
    
    print("Сумма = \(a + b)") // Сумма = 33
}

func task5() {
    print("Task 5:")
    guard let x = safeDoubleInput(prompt: "Введи первое дробное число:"),
          let y = safeDoubleInput(prompt: "Введи второе дробное число:"),
          let z = safeDoubleInput(prompt: "Введи третье дробное число:"), z != 0 else {
              print("Error! Division on 0 or incorrect data")
              return
          }
    
    let result = (x + y) / z
    print("Result = \(result)")
}

func task6() {
    print("Task 6: сколько друзей было в баре? Сумма счета? посчитай - сколько выходит с одного и выведи сообщение 'Значит с каждого по [столько то] рублей'")
    guard let total = safeDoubleInput(prompt: "Введи сумму общего счета (руб.):"),
          let friendsCount = safeDoubleInput(prompt: "Введи количество друзей:"), friendsCount > 0 else {
        print("❌ Ошибка ввода!")
        return
    }
   
    let perPerson = total / friendsCount
    let roundedAmount = String(format: "%.2f", perPerson)
    print("💰 Значит с каждого по \(roundedAmount) рублей") // 💰 Значит с каждого по 5586.18 рублей
}

func task7() {
    print("Task 7: спроси у юзера: сколько минут ему ехать от дома до работы. Посчитайте расстояние пути, если скорость авто = 70 км/ч.")
    
    guard let minutes = safeDoubleInput(prompt: "Сколько минут ехать от дома до работы?") else {
        print("❌ Ошибка ввода!")
        return
    }
    
    let speed = 70.0 // Фиксированная скорость по условию задачи
    let distance = minutes / 60.0 * speed // минуты → часы → расстояние
    let roundedAmount = String(format: "%.2f", distance)
    
    print("Тебе ехать \(minutes) минут до работы, значит ты живешь в \(roundedAmount) км от города.")
}

func task8() {
    print("выведи сообщение: 'От твоего дома до работы (столько) косых саженей)', если сажень = 2,48 м.")
    guard let minutes = safeDoubleInput(prompt: "Сколько минут ехать от дома до работы?") else {
        print("❌ Ошибка ввода!")
        return
    }
    
    let speed = 70.0
    let fathomCount = (minutes / 60.0 * speed * 1000) / 2.48
    let roundedAmount = String(format: "%.2f", fathomCount)
    
    print("От твоего дома до работы \(roundedAmount) косых саженей")
}

func task9() {
    print("Выведи сообщение: Укажи промежуток времени в неделях. А затем количество дней, часов, минут, секунд в этом промежутке")
    
    guard let weeks = safeDoubleInput(prompt: "Укажи промежуток времени в неделях?"), weeks > 0 else {
        print("❌ Ошибка ввода!")
        return
    }
    
    let days = weeks * 7.0
    let hours = days * 24.0
    let minutes = hours * 60.0
    let seconds = minutes * 60.0
    
    let roundedDays = String(format: "%.0f", days)
    let roundedHours = String(format: "%.0f", hours)
    let roundedMinutes = String(format: "%.0f", minutes)
    let roundedSeconds = String(format: "%.0f", seconds)
    
    print("В \(weeks) неделях \(roundedDays) дней, \(roundedHours) часов, \(roundedMinutes) минут, \(roundedSeconds) секунд")
}

func safeStringInput(prompt: String) -> String? {  // MARK: - Безопасный ввод непустой строки
    print(prompt)
    guard let input = readLine(),
          !input.trimmingCharacters(in: .whitespaces).isEmpty else {
        print("❌ Пустая строка недопустима")
        return nil
    }
    return input.trimmingCharacters(in: .whitespaces)
}
    
    func task10() {
        print("Юзеру: введи свое имя, введи свою фамилию. Соедини их в новое свойство и выведи на консоль")
        guard let name = safeStringInput(prompt: "Введите свое имя"),
              let surname = safeStringInput(prompt: "Введите свою фамилию") else { return }
             
              let fullname = name + " " + surname
              print(fullname)
    }

    func task11() {
        print("Юзеру: введите свое имя, введите свой вес. Сохрани вес в переменной. Создай константу с размерностью 'кг'. Добавь к переменной размерность. Выведи на консоль.")
        
        guard let name = safeStringInput(prompt: "ВВедите свое имя"),
              let weight = safeDoubleInput(prompt: "Введите свой вес") else { return }
        
              let kg = "kg"
              let weightInKg = String(weight) + " " + kg
              print(name + " " + weightInKg)
    }

    func task12() {
        print("Создай новую переменную, добавь в нее построчно инфу с полным именем и весом юзера из предыдущих задач. Выведи в консоль")
        guard let name = safeStringInput(prompt: "ВВедите свое имя"),
              let surname = safeStringInput(prompt: "ВВедите свою фамилию"),
              let weight = safeDoubleInput(prompt: "Введите свой вес"), weight > 0 else { return }
        
        let kg = "kg"
        let weightInKg = String(weight) + " " + kg
        print("""
              \(name)
              \(surname)
              \(weightInKg)
             """)
    }

func task13() {
    // 1. ОПИСАНИЕ ЗАДАЧИ - Что делаем?
    print("Запроси у юзера инфу с полным именем и весом. Выведи в консоль")
    
    // 2. ВВОД + ПРОВЕРКИ - guard let данные
    guard let name = safeStringInput(prompt: "Введите свое имя"),
      let surname = safeStringInput(prompt: "Введите свою фамилию"),
          let weight = safeDoubleInput(prompt: "Введите свой вес"), weight > 0 else { print("❌ Ошибка ввода!")
        return
    }
    
    // 3. СТРУКТУРА/МОДЕЛЬ - struct/let константы
    struct User {
        let name: String
        let surname: String
        let weight: Double
        
        var description: String {
            let formattedWeight = String(format: "%.1f kg", weight)
            return """
              \(name)
              \(surname)
              \(formattedWeight)
            """
        }
    }
    
    // 4. ЛОГИКА (создание объекта)
    let user = User(name: name, surname: surname, weight: weight)
    
    // 5. ВЫВОД - print(результат)
    print(user.description)
}
    
func task14() {
    // 1. ОПИСАНИЕ ЗАДАЧИ - Что делаем?
    print("Запроси у юзера два числа. Выведи на консоль сначала большее, затем - меньшее")
    
    // 2. ВВОД + ПРОВЕРКИ - guard let данные
    guard let numberFirst = safeDoubleInput(prompt: "Введи  первое число"),
            let numberSecond = safeDoubleInput(prompt: "Введи второе число") else {
        print("Ошибка ввода")
        return
    }
    
    // 4. ЛОГИКА - определяем какое число БОльшее?
  let (larger, smaller) = numberFirst >= numberSecond
    ? (numberFirst, numberSecond) : (numberSecond, numberFirst)
    
    // 5. ВЫВОД - print(результат)
    print("📊 Результат:")
    print("Большее - \(larger)")
    print("Меньшее - \(smaller)")
}

// utilities.swift
func compareTwoNumbers(a: Double, b: Double) -> (larger: Double, smaller: Double) {
    return a >= b ? (a, b) : (b, a)
}

func task15() {
    // 1. ОПИСАНИЕ ЗАДАЧИ - Что делаем?
    print("Запроси у юзера два числа. Выведи на консоль сначала большее, затем - меньшее")

    // 2. ВВОД + ПРОВЕРКИ - guard let данные
    guard let numberFirst = safeDoubleInput(prompt: "Введи  первое число"),
            let numberSecond = safeDoubleInput(prompt: "Введи второе число") else {
        print("Ошибка ввода")
        return
    }
    
    // 4. ЛОГИКА - определяем какое число БОльшее?
    let (larger, smaller) = compareTwoNumbers(a: numberFirst, b: numberSecond)
    
    // 5. ВЫВОД - print(результат)
    print("📊 Результат:")
    print("   Большее: \(larger)")
    print("   Меньшее: \(smaller)")
    }
 
// utilities.swift - утилита для проверки года
func isValidBirthYear(_ year: Int) -> Bool {
    let currentYear = Calendar.current.component(.year, from: Date())
    return year > 1900 && year <= currentYear
}

func task16() {
    // 1. ОПИСАНИЕ ЗАДАЧИ - Что делаем?
    print("Введите год рождения (от 1901 до текущего года):")
    
    // 2. ВВОД ДАННЫХ - Optional Chaining и тернарный оператор
      let result = readLine().flatMap { Int($0) }
          .map { isValidBirthYear($0) ? "Thank you!" : "Can't be!" }
          ?? "Can't be!" // Случай, когда ввод некорректен или пуст
      
      print(result)
}
func task17() {
    print("Введите год рождения (от 1901 до текущего года):")
    
    let result = readLine()
        .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
        .flatMap { trimmed -> Int? in
            // Объединяем проверку на пустоту и преобразование в Int
            guard !trimmed.isEmpty else { return nil }
            return Int(trimmed)
        }
        .flatMap { year -> String? in
            isValidBirthYear(year) ? "Thank you! Ваш год рождения: \(year)" : nil
        }
        ?? "Can't be!"
    
    print(result)
}

func safeIntInput(prompt: String) -> Int? { // функция "безопасный ввод числа" с параметром-строкой подсказки и -> Double?
    print(prompt)
    guard let input = readLine(), // читаем строку из консоли
          let value = Int(     // пытаемся преобразовать в Double
              input.trimmingCharacters(in: .whitespaces) // убираем пробелы по краям
          ) else {
        print("Incorrect number format") // если не получилось получить число
        return nil                       // возвращаем nil
    }
    return value                        // если всё ок — возвращаем число
}

func isEven(number: Int) -> String {   // ← вне task18
     number % 2 == 0 ? "Even" : "Odd"  // ← русский
}

func task18() {
    // 1. ОПИСАНИЕ ЗАДАЧИ - Что делаем?
    print("🎯 Проверка четности числа. Ввод: число. Вывод: 'Четное'/'Нечетное'")
    
    // 2. ВВОД + ПРОВЕРКИ - guard let данные
    guard let number = safeIntInput(prompt: "Введи число") else {
        print("❌ Ошибка ввода")
        return
    }
    // 4. ЛОГИКА - определяем число четное?
    let result = isEven(number: number)
    print("Number \(number) = \(result)")
    }
 
func transferToFahrenheit(degree: Double) -> Double {
    degree * 9/5 + 32
}

func task19() {
    // 1. ОПИСАНИЕ ЗАДАЧИ - Конвертер C → F (F = C × 9/5 + 32)
    print("🔥 Конвертер температуры")
    
    guard let degree = safeDoubleInput(prompt: "Enter °C:") else {
        print("❌ Uncorrect enter")
        return
    }
    
    let fahrenheit = transferToFahrenheit(degree: degree)
    print(String(format: "%.1f°C = %.1f°F", degree, fahrenheit))
}

func choose(language: String) -> String {
    if language.caseInsensitiveCompare("swift") == .orderedSame {
        return "SWIFT"
    }
    return "OTHER"
}

func task20() {
      // 1. Описание задачи - Любимый язык программирования?
    print("💻 Favorite programming language:")
    
    guard let language = safeStringInput(prompt: "💻 Enter favorite programming language:") else {
        print("❌ Uncorrect enter")
        return
    }
    
    let favoriteLanguage = choose(language: language)
    if favoriteLanguage == "SWIFT" {
        print("🔥 Super!")
        } else {
            print("Not bad")
    }
}
