//
//  ViewController.swift
//  readPDF
//
//  Created by Arika Afrin Boshra on 2/3/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit
import PDFKit

class ViewController: UIViewController {

    @IBOutlet weak var pdfView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let path = Bundle.main.path(forResource: "pdf", ofType: "pdf"){
//            let url = URL(fileURLWithPath: path)
//            if let pdfDoc = PDFDocument(url: url){
//                pdfView.autoScales = true
//                pdfView.d
//            }
//        }
        // Do any additional setup after loading the view.
        let pdfView = PDFView(frame: self.view.bounds)
        let url = Bundle.main.url(forResource: "ObjectiveC", withExtension: "pdf")
        pdfView.document = PDFDocument(url: url!)
        self.pdfView.addSubview(pdfView)
       
    }


}

