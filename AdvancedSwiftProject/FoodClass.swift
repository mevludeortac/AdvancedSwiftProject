//
//  FoodClass.swift
//  AdvancedSwiftProject
//
//  Created by MEWO on 1.12.2021.
//

import Foundation
class FoodClass{
    var name: String
    var type: String
    var calories: Int
    var culture: String
    
    init(nameInput: String, typeInput: String, caloriesInput: Int, cultureInput: String) {
        self.name = nameInput
        self.type = typeInput
        self.calories = caloriesInput
        self.culture = cultureInput
    }
    func moreCalories(){
        self.calories *= 2
    }
}
