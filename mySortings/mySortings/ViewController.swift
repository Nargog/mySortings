//
//  ViewController.swift
//  mySortings
//
//  Created by Mats Hammarqvist on 2020-10-20.
//

import UIKit

class ViewController: UIViewController {
    var inDataIntegerArray = [12,1,956,02,818,912,322,43,161,9,002,768,23,79,9,1,115,7,2,18,59,58,989,3,56,82,59,147,86,62,06,10,538,36,694,952,71,0,2,5,67,103,6,295,933,428,9,70,708,6,73,449,57,283,6,48,139,5,140,34,5,9,95,74,892,9,387,172,44,05,67,534,7,79,5,565,417,252,480,22,503,089,76,433,93,36,374,97,035,70,2,896,0,3,0,259,93,92,47,860]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBOutlet weak var myLabelOut: UILabel!
    @IBAction func btnSort(_ sender: Any) {
        
        
        let apa = sort(indata: inDataIntegerArray)
        
        var svar = "Sorterad: "
        for siffra in apa {
            svar.append(String(siffra)+" , ")
        }
        
        myLabelOut.text = svar
        print(svar)
    }
    
    @IBOutlet weak var txxOut: UITextField!
}

