//
//  txtField.swift
//  cal-app
//
//  Created by Muhammad Elsaied on 6/7/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import UIKit

@IBDesignable

class TxtField: UITextField {
    override func prepareForInterfaceBuilder() {
        CustizedView()
    }
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 25
        let currencyLbl = UILabel(frame: CGRect(x:8 ,y:((frame.size.height/2) - size / 2),width:size,height:size))
        currencyLbl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.5667886734, green: 0.227562964, blue: 0.9016211629, alpha: 0.7927486795)
        currencyLbl.layer.cornerRadius = 2.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text =
            formatter.currencySymbol
        addSubview(currencyLbl)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        CustizedView()
    }
    
    
    
    
    func CustizedView(){
        backgroundColor = #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 0.2487345951)
        layer.cornerRadius = 5.0
        clipsToBounds = true
        textAlignment = .center
        if let p = placeholder {
            let place = NSAttributedString(string: p,attributes: [.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        }
    }

}
