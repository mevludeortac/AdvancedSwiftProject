//
//  FoodStruct.swift
//  AdvancedSwiftProject
//
//  Created by MEWO on 1.12.2021.
//

import Foundation
struct FoodStruct{
    var name: String
    var type: String
    var calories: Int
    var culture: String
    
    //free initiliaze
    
    //değişkenlerin değerinde değişiklik yapabilmek için fonksiyonu mutatin olarak yazıyoruz
     mutating func moreCalories(){
        self.calories *= 2
    }
}
