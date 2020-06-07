//
//  ViewController.swift
//  cal-app
//
//  Created by Muhammad Elsaied on 6/7/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    

    @IBOutlet weak var wageLbl: TxtField!
    @IBOutlet weak var price: TxtField!
    
    @IBOutlet weak var wageHours: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //create calculate button
        //set frame  width height UIButton CGRect
        //set background
        //set title
        //set title color
        //add target func
        
        let calculateBtn = UIButton(frame:CGRect(   x:0,    y:0,    width:view.frame.size.width,height:70))
        calculateBtn.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        calculateBtn.setTitle("Calculate", for: .normal)
        calculateBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1),for: .normal)
        calculateBtn.addTarget(self, action: #selector(MainVC.calculate), for:.touchUpInside)
        wageLbl.inputAccessoryView = calculateBtn
        price.inputAccessoryView = calculateBtn
        //hide num of hours
        //hide hours label
        //hide clear btn
        wageHours.isHidden = true
        hoursLbl.isHidden = true
        
        }
    @objc func calculate() {
       // check if hours lbs and price lbl is not empty
        if let wageLbl = wageLbl.text ,let price = price.text{
      //check if inputs are doubles
            if let wage = Double(wageLbl) ,let price = Double(price){
                //end view input
                //show wagehours hours lbl
                //calculate
                view.endEditing(true)
                wageHours.isHidden = false
                hoursLbl.isHidden = false
                wageHours.text = "\(Wage.hourToWork(forWage :wage,andPrice :price))"
            } else {
                print("price or wage is not doubles")
            }
        
            
        }else{
            print("input feilds")
        }
        
    }
    
    @IBAction func clearBtnTapped(_ sender: Any) {
        wageHours.isHidden = true
        hoursLbl.isHidden = true
        wageLbl.text = ""
        price.text = ""
    }


}

