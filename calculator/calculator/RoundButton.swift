//
//  RoundButton.swift
//  calculator
//
//  Created by Dorin on 2/16/20.
//  Copyright © 2020 Dorin. All rights reserved.
//

import UIKit

@IBDesignable

class RoundButton: UIButton {

    @IBInspectable var roundButton : Bool = false{
        didSet{
            if roundButton {
                layer.cornerRadius = frame.height / 2
            }
        }
    }
    override func prepareForInterfaceBuilder() {
        if roundButton {
            layer.cornerRadius = frame.height / 2
        }
    }
}
