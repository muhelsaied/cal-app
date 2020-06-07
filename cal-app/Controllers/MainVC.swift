//
//  ViewController.swift
//  cal-app
//
//  Created by Muhammad Elsaied on 6/7/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageBtn: TxtField!

    @IBOutlet weak var inputPrice: TxtField!
    
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
        wageBtn.inputAccessoryView = calculateBtn
        inputPrice.inputAccessoryView = calculateBtn
        
        }
    @objc func calculate() {
        print("tooooooz")
       
        
    }


}

