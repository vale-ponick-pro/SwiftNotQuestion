//
//  controlFlow.swift
//  Swift?NotQuestion
//
//  Created by Валерия Пономарева on 02.02.2026.
//

import Foundation

func task22() {
    print("Task 22: English menu: meat/fish/vegan?")
    print("""
        MENU:
        1 - salad | 2 - soups | 3 - main dishes
        """)
    
    let menu = readLine()?.trimmingCharacters(in: .whitespaces)
    
    print("""
        Choose dinner:
        1 - with meat | 2 - with fish | 3 - vegan
        """)
    
    let meat = safeIntInput(prompt: "Your choice:")
    
    switch (menu, meat) { // 🔥 ТУПЛЫ best practice!
    case ("1", 1) : print("Ceasar salad")
    case ("1", 2) : print ("Prawn coctail")
    case ("1", 3) : print("Garden fresh salad")
    case ("2", 1) : print("Chicken broth")
    case ("2", 2) : print("Fish soup")
    case ("2", 3) : print("Onion soup")
    case ("3", 1) : print("Steak")
    case ("3", 2) : print("Seafood pasta")
    case ("3", 3) : print("Mac'n'cheese")
    default: print("Error!")
    }
}
