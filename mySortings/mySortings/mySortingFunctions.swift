//
//  mySortingFunctions.swift
//  mySortings
//
//  Created by Mats Hammarqvist on 2020-10-20.
//

import Foundation





//  how to call  ******   let apa = sort(indata: instring)

func sort(indata:[Int])-> [Int]{
    print("kallad")
    var lower=[Int](),higher=[Int]()
    
    //välj sista elementet som pivå
    
    let pivot:Int=indata.last!
    
    // Jämför första elementet till näst sista elementet med pivå och sortera dem som lägre eller högre  (lower / higher)
    for i in 0...indata.count-2{
    
        
        if indata[i]<pivot{
            lower.append(indata[i])
        } else {
            higher.append(indata[i])
        }
        
        
    
    
    }
   
    //skriv ut för att se stegen
    print(lower,pivot,higher)
    
    // Kalla rekursivt då det finns en osorterad array under pivå, egentligen vet vi inte om den är sorterad eller ej
    if lower.count > 1 {
        lower = sort(indata: lower)
    }
    // Kalla rekursivt då det finns en osorterad array över pivå, egentligen vet vi inte om den är sorterad eller ej

    if higher.count > 1 {
        higher = sort(indata: higher)
    }
    
    // Addera lägre än pivå + pivå + högre än pivå
    
    lower.append(pivot)
    
    lower.append(contentsOf: higher)
    
    return lower
    
   /*ALTERNATIV
     
     var result:[Int]
    result.append(contentsOf: lower)
    result.append(pivot)
    result.append(contentsOf: higher)
    
     return result
     
     
     
     */
    
    
}


//print(apa)

