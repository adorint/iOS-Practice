//
//  ViewController.swift
//  autoLayout
//
//  Created by Dorin on 2/4/20.
//  Copyright © 2020 Dorin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var firstView = UIView()
    lazy var secondView = UIView()
    lazy var thirdView = UIView()
    lazy var fourthView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        autolayoutforViewController()
    }
    
}
    
    extension ViewController{
        
        func autolayoutforViewController(){
            
            firstView = UIView(frame: CGRect(x: 0,y:0, width: view.frame.width, height: view.frame.height))
            firstView.backgroundColor = UIColor.white
            self.view.addSubview(firstView)
            
            secondView = UIView(frame: CGRect(x: 30,y:50, width: view.frame.width-230, height: view.frame.height-600))
            secondView.backgroundColor = UIColor.yellow
            self.view.addSubview(secondView)
            
            thirdView = UIView(frame: CGRect(x: 220,y:50, width: view.frame.width-250, height: view.frame.height-750))
            thirdView.backgroundColor = UIColor.green
            self.view.addSubview(thirdView)
            
            fourthView = UIView(frame: CGRect(x: 220,y:200, width: view.frame.width-250, height: view.frame.height-750))
            fourthView.backgroundColor = UIColor.red
            self.view.addSubview(fourthView)
            
            
//            [firstView, secondView, thirdView, fourthView].forEach{_ in
//               // view.addSubview(<#T##view: UIView##UIView#>)
//            }
        }
    }




