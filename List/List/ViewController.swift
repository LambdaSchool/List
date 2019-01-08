//
//  ViewController.swift
//  List
//
//  Created by Dustin Koch on 1/8/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        label.backgroundColor = UIColor(patternImage: UIImage(named: "ocean")!)
    }
    
    
    func moveListForward() {
        label.text = completeList
        textField.text = ""
        listCount += 1
    }
    
    let itemsController = ItemsController()
    var completeList: String = ""
    var listCount: Int = 1
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func shouldAdd(_ sender: UIButton) {
        let input = textField.text ?? ""
        
        
        if !input.isEmpty {
            switch listCount {
            case 1:
                completeList += "1️⃣ - \(input)\n"
                moveListForward()
            case 2:
                completeList += "2️⃣ - \(input)\n"
                moveListForward()
            case 3:
                completeList += "3️⃣ - \(input)\n"
                moveListForward()
            case 4:
                completeList += "4️⃣ - \(input)\n"
                moveListForward()
            case 5:
                completeList += "5️⃣ - \(input)\n"
                moveListForward()
            case 6:
                completeList += "6️⃣ - \(input)\n"
                moveListForward()
            case 7:
                completeList += "7️⃣ - \(input)\n"
                moveListForward()
            case 8:
                completeList += "8️⃣ - \(input)\n"
                moveListForward()
            case 9:
                completeList += "9️⃣ - \(input)\n"
                moveListForward()
            case 10:
                completeList += "🔟 - \(input)\n"
                moveListForward()
            default:
                completeList += "♾️ - \(input)\n"
                moveListForward()
        }
        }
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        itemsController.resetItems()
        label.text = ""
        completeList = ""
        listCount = 1
    }
    
    @IBAction func printDebug(_ sender: UIButton) {
        print(completeList)
    }
    

}

