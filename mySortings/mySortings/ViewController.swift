//
//  ViewController.swift
//  mySortings
//
//  Created by Mats Hammarqvist on 2020-10-20.
//

import UIKit

class ViewController: UIViewController {
    var inDataIntegerArray = [12,1,956,02,818,912]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBOutlet weak var myLabelOut: UILabel!
    @IBAction func btnSort(_ sender: Any) {
        
        
        let apa = quickSort(indata: inDataIntegerArray)
        
        var svar = "Sorterad: "
        for siffra in apa {
            svar.append(String(siffra)+" , ")
        }
        
        myLabelOut.text = svar
        print(svar)
    }
    
    @IBOutlet weak var txxOut: UITextField!
}

