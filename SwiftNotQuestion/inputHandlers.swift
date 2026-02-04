//
//  inputHandlers.swift
//  Swift?NotQuestion
//
//  Created by Валерия Пономарева on 03.02.2026.
//

import Foundation

// БАЗОВЫЕ ФУНКЦИИ ВВОДА
public func safeStringInput(prompt: String) -> String {
    print(prompt, terminator: " ")
    if let input = readLine(), !input.isEmpty {
        return input
    }
    return ""
}

public func safeDoubleInput(prompt: String) -> Double? {
    print(prompt, terminator: " ")
    if let input = readLine(), let value = Double(input) {
        return value
    }
    return nil
}

public func safeIntInput(prompt: String) -> Int? {
    print(prompt, terminator: " ")
    if let input = readLine(), let value = Int(input) {
        return value
    }
    return nil
}

// УТИЛИТЫ
public func formatCurrency(_ amount: Double) -> String {
    return String(format: "%.2f", amount)
}

public func pressEnterToContinue() {
    print("\nНажмите Enter для продолжения...", terminator: "")
    _ = readLine()
}

public func safeYesNoInput(prompt: String) -> Bool {
    while true {
        print(prompt, terminator: " ")
        if let input = readLine()?.lowercased() {
            if input == "да" || input == "yes" || input == "д" || input == "y" {
                return true
            }
            if input == "нет" || input == "no" || input == "н" || input == "n" {
                return false
            }
        }
        print("Пожалуйста, введите 'да' или 'нет'")
    }
}
