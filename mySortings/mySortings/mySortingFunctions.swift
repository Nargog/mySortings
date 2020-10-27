//
//  mySortingFunctions.swift
//  mySortings
//
//  Created by Mats Hammarqvist on 2020-10-20.
//

import Foundation

// Merge sort !!!
// https://reactgo.com/merge-sort-algorithm-javascript/

// inte inlagd än. Smart algoritm med rekursion






/* insertion sort: function insSort
 
 i ← 1
 while i < length(A)
     j ← i
     while j > 0 and A[j-1] > A[j]
         swap A[j] and A[j-1]
         j ← j - 1
     end while
     i ← i + 1
 end while
 
 
 
 */


func insSort (A_in:[Int])-> [Int]{
    //Lokala variabler
    var i = 1
    var j = 0
    var A = A_in
    
    
    while i < A.count {
        j = i
        while j > 0 && A[j-1] > A[j] {
            A.swapAt(j, j-1)
            j -= 1
            
        }
        i += 1
    }
    return A
}

// Min lite fulare variant med flytt från osorterad till sorterad array

func insertionSort(inArray:[Int])->[Int]{
    //skapa en variabel med osorterade värden och en tom array med sorterade värden
    var unsorted=inArray
    var sorted:[Int] = []
    //lägg till första värdet osorterad lista som start i sorterad lista
    sorted.append(unsorted.remove(at: 0))

    // lite hjälpvariabler
    var foundPlace : Bool
    var i = 0
    var valueToSort = 0

    while unsorted.count > 0  { //töm första objektet unsorted från början
        foundPlace = false
        valueToSort = unsorted.remove(at: 0)
        i = 0
        
        print(unsorted.count, i)
        while i < sorted.count && !foundPlace { //om vi hittar större värde insert före detta värde och om vi hittat rätt plats avsluta sökande efter plats
            
            if sorted[i] > valueToSort{
                sorted.insert(valueToSort, at: i)
                foundPlace = true
            } else {
            
            i += 1
            
            }
            
        }
        //om det inte finns något högre värde så är värdet högst/sist
        if !foundPlace {
            sorted.append(valueToSort)
        }
        //loopa sorted
        //insert första unserted på första plats med högre värde efter i sorted. Ta bort värde i unsorted
        // sluta loop då vi inte behöver gå vidare
 
    }
    

   sorted.append(contentsOf: unsorted) //det blir en kvar i array unsorted för att undvika overflow :( Kanske kunde lösa det genom att sätta repeat ... while ()
    
    
    return sorted
}


// Selection sort. Letar hela tiden efter öägsta värde https://en.wikipedia.org/wiki/Selection_sort
func selectionSort(inArray:[Int])->[Int]{
    var unsorted=inArray
    var sorted:[Int] = []
    
    while unsorted.count > 1 {
    
    var minstaPlats = 0
    
    for a in 1...unsorted.count-1{
        if unsorted[minstaPlats]>unsorted[a]{
            minstaPlats = a
        }
        
    }
        sorted.append(unsorted.remove(at: minstaPlats))
}
   sorted.append(contentsOf: unsorted) //det blir en kvar i array unsorted :(
    return sorted
}

// Oj, det blev en mer avancerad variant jag tänkt mig https://en.wikipedia.org/wiki/Bubble_sort


func bubbleSort(ubba:[Int])->[Int]{
    var myArray = ubba
    var unsorted:Bool = true
    
    while unsorted{
       // print("kallad")
        unsorted = false //vi förutsätter att iteration är sorterad
        for a in 0...myArray.count-2 {
            if myArray[a]>myArray[a+1]{
                myArray.swapAt(a, a+1)
                unsorted = true //nä den var osorterad. gör en iteration till
            }
            
        }
        
    }
   return myArray
}


//  how to call  ******   let apa = sort(indata: instring)

func quickSort(indata:[Int])-> [Int]{
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
        lower = quickSort(indata: lower)
    }
    // Kalla rekursivt då det finns en osorterad array över pivå, egentligen vet vi inte om den är sorterad eller ej

    if higher.count > 1 {
        higher = quickSort(indata: higher)
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

