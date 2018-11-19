//
//  ViewController.swift
//  window-shooper
//
//  Created by admin on 21/10/2018.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wagetxt: CurrencyTxtField!
    @IBOutlet weak var itempricetxt: CurrencyTxtField!
    @IBOutlet weak var resultsLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let calcBtn  = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9856440355, green: 0.5717979643, blue: 0.01268160746, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wagetxt.inputAccessoryView = calcBtn
        itempricetxt.inputAccessoryView = calcBtn
        
        resultsLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }

    @objc func calculate (){
        if let wageTxt = wagetxt.text, let priceTxt = itempricetxt.text{
            if let wage = Double(wageTxt) , let price = Double(priceTxt){
                view.endEditing(true)
                resultsLbl.isHidden = false
                hoursLbl.isHidden = false
                resultsLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
        
    }
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultsLbl.isHidden = true
        hoursLbl.isHidden = true
        wagetxt.text = ""
        itempricetxt.text = ""
    }
    

}

