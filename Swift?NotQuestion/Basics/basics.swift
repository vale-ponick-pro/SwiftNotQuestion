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

func safeDoubleInput(prompt: String) -> Double? {
    print(prompt)
    guard let input = readLine(),
          let value = Double(input.trimmingCharacters(in: .whitespaces)) else {
        print("Incorrect number format")
        return nil
    }
    return value
}

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
    print("💰 Значит с каждого по \(perPerson) рублей")
}

func task7() {
}
