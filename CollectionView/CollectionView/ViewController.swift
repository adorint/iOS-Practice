//
//  ViewController.swift
//  CollectionView
//
//  Created by AB on 11/12/19.
//  Copyright © 2019 AB. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var customcollectionview: UICollectionView!
    var imagefiles=["1.jpg", "2.jpg", "3.png", "4.png"]
    var filename=["Noodles", "Fuska", "Grilled_Chicken", "Biriyani"]
    var file2name=["Italy", "BD", "Indian", "Indian"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        customcollectionview.dataSource=self
        customcollectionview.delegate=self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filename.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Cccell:CollectionViewCell=customcollectionview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as!CollectionViewCell
        Cccell.uilabel1.text=filename[indexPath.row]
        Cccell.uilabel2.text=file2name[indexPath.row]
        Cccell.uiimage.image=UIImage(named: imagefiles[indexPath.row])
        return Cccell
    }
    


}

