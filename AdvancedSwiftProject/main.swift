//
//  main.swift
//  AdvancedSwiftProject
//
//  Created by MEWO on 1.12.2021.
//

import Foundation

let icliKofte = FoodClass(nameInput: "içli köfte", typeInput: "köfte", caloriesInput: 100, cultureInput: "antep")
print(icliKofte.name)
print(icliKofte.type)
print(icliKofte.calories)
print(icliKofte.culture)

var adanaBoregi = FoodStruct(name: "adana böreği", type: "börek", calories: 200, culture: "adana")
print(adanaBoregi.name)
print(adanaBoregi.type)
print(adanaBoregi.calories)
print(adanaBoregi.culture)

//IMMUTABLE STRUCT
icliKofte.calories = 56
print(icliKofte.calories)
// içerisindeki bir değişkene yeni bir değer vermek için STRUCTımızı let değil var olarak tanımlamamız gerekiyor,
adanaBoregi.calories = 87
print(adanaBoregi.calories)


//REFERENCE - VALUE TYPE
   let secondIcliKofte = icliKofte
     var secondAdanaBoregi = adanaBoregi

    secondIcliKofte.calories = 11
    secondAdanaBoregi.calories = 33

    print(secondIcliKofte.calories)
    print(secondAdanaBoregi.calories)

    print(icliKofte.calories)
    print(adanaBoregi.calories)
 


//REFERENCE TYPE ---> FOR CLASS
// copy -> same object new reference -> 1 object + 2 references


//VALUE TYPE ---> FOR STRUCT
// copy -> new object -> 2 objects
//use struck if you are going to copy



//FUNCTION VS MUTATING FUNCTION

//11'den 22 oldu  -->
print(icliKofte.calories)
icliKofte.moreCalories()
print(icliKofte.calories)

//87'den 174   -->
print(adanaBoregi.calories)
adanaBoregi.moreCalories()
print(adanaBoregi.calories)


        //TUPLE
 // ---- 1 ----
let myTuple = (6,9)
print(myTuple.0)

// ---- 2 ----
var ourTuple = (1,3,5)
ourTuple.1 = 33
print(ourTuple.1)

// ---- 3 ----
let yourTuple = ("me", 69)
print(yourTuple)

// ---- 4 ----
let tuple4 = (10, [20,30,40])
print(tuple4.1[2])

// ---- 5 ----
let predefinedTuple : (String, String)
predefinedTuple.0 = "yavrummmmmmm"
predefinedTuple.1 = "askimmmmmmmm"
print(predefinedTuple.1)

// ---- 6 ----
let lastTuple = (name:"me" , isOld : true)
print(lastTuple.isOld)
print(lastTuple.name)


// GUARD LET vs IF LET
//guard --> confident

let denemeTahtasi = "5"

func convertToIntegerWithGuard(denemeInput: String) -> Int {
    guard let number = Int(denemeInput) else{
        return 0}
    return number
}
func convertToIntegerWithIf(denemeInput: String) -> Int {
    if let number = Int(denemeInput){
        return number
    }
    else{
        return 0
    }
}
print(convertToIntegerWithGuard(denemeInput: denemeTahtasi))
print(convertToIntegerWithIf(denemeInput: denemeTahtasi))

//SWITCH
let ourNumber = 11

let ourRemainder = ourNumber % 4

switch ourRemainder{
case 1:
    print("it's 1")
case 2:
    print("it's 2")
case 3:
    print("it's 3")
default:
    print("none")
}

switch ourRemainder{
case 1...4:
    print("1 ile 4 arasında")
default:
print("none")
}
