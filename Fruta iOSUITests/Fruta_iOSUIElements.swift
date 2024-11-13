//
//  Fruta_iOSUIElements.swift
//  Fruta
//
//  Created by lt0821 on 10/15/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

let smoothieDictionary = [
    1: ["berry-blue","Berry Blue", "Ingredients: Orange, blueberry, and avocado.", "520 Calories"],
    2: ["carrot-chops","Carrot Chops", "Ingredients: Orange, carrot, and mango.", "230 Calories"],
    3: ["hulking-lemonade","Hulking Lemonade", "Ingredients: Lemon, spinach, and avocado.", "170 Calories",
        "This is not just any lemonade. It will give you powers you'll struggle to control!"],
    4: ["kiwi-cutie","Kiwi Cutie", "Ingredients: Kiwi, orange, and spinach.", "210 Calories"],
    5: ["lemonberry","Lemonberry", "Ingredients: Raspberry, strawberry, and lemon.", "140 Calories"],
    6: ["love-you-berry-much","Love You Berry Much", "Ingredients: Strawberry, blueberry, and raspberry.", "210 Calories"],
    7: ["mango-jambo","Mango Jambo", "Ingredients: Mango and pineapple.", "140 Calories"],
    8: ["one-in-a-melon","One in a Melon", "Ingredients: Watermelon and raspberry.", "130 Calories"],
    9: ["papas-papaya","Papa's Papaya", "Ingredients: Orange, mango, and papaya.", "210 Calories"],
    10: ["peanut-butter-cup","Peanut Butter Cup", "Ingredients: Almond Milk, banana, chocolate, and peanut butter.", "460 Calories"],
    11: ["pina-y-coco","Piña yCoco", "Ingredients: Pineapple, almond milk, and coconut.", "320 Calories"],
    12: ["sailor-man","Sailor Man", "Ingredients: Orange and spinach.", "170 Calories"],
    13: ["thats-a-smore","That's a Smore!", "Ingredients: Almond Milk, coconut, and chocolate.", "240 Calories"],
    14: ["thats-berry-bananas","That's Berry Bananas!", "Ingredients: Almond Milk, banana, and strawberry.", "580 Calories"],
    15: ["tropical-blue","Tropical Blue", "Ingredients: Almond Milk, banana, blueberry, and mango.", "490 Calories",
         "A delicious blend of tropical fruits and blueberries will have you sambaing around like you never knew you could!"],
]

enum FruitEnum: String {
    case Menu = "Menu"
    case MenuNav
    case Favorites = "Favorites"
    case Search = "Search"
    
    var element: XCUIElement {
        switch self {
        case .Menu, .Favorites:
            return XCUIApplication().buttons[self.rawValue]
        case .MenuNav:
            return XCUIApplication().navigationBars.buttons[FruitEnum.Menu.rawValue]
        case.Search:
            return XCUIApplication().searchFields[self.rawValue]
        }
    }
}
