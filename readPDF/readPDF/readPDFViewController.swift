//
//  readPDFViewController.swift
//  readPDF
//
//  Created by Arika Afrin Boshra on 2/3/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit
import PDFKit

class readPDFViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let pdfView = PDFView(frame: self.view.bounds)
        let url = Bundle.main.url(forResource: "ObjectiveC", withExtension: "pdf")
        pdfView.document = PDFDocument(url: url!)
        self.view.addSubview(pdfView)
    }

}
