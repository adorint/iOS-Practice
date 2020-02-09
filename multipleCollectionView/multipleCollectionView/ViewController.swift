//
//  ViewController.swift
//  multipleCollectionView
//
//  Created by Dorin on 2/8/20.
//  Copyright © 2020 Dorin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var topCollectionView: UICollectionView!
    
    @IBOutlet weak var bottomCollectionView: UICollectionView!
    
    var array1 = ["Abid","Dorin","Priyancka","Sajid","Taj","Anika","Bishal","Boshra"]
    var array2 = ["4.00","3.43","3.40","3.90","3.35","3.63","3.50","3.80"]
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setdelegate(collectionview: topCollectionView)
        setdelegate(collectionview: bottomCollectionView)
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var numberOfRow:Int?
        switch collectionView {
        case topCollectionView:
            numberOfRow = array1.count
        case bottomCollectionView:
            numberOfRow = array2.count
        default:
            print("Error!")
        }
        return numberOfRow ?? 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var tcell = UICollectionViewCell()
        
        switch collectionView{
        case topCollectionView:
            let tcell1:topCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "topCell", for: indexPath) as! topCollectionViewCell
            tcell1.topLabel.text = array1[indexPath.row]
            tcell = tcell1
            
        case bottomCollectionView:
            let tcell2:bottomCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "bottomCell", for: indexPath) as! bottomCollectionViewCell
            tcell2.bottomLabel.text = array2[indexPath.row]
            tcell = tcell2
        default:
            print("Error!")
        }
        return tcell
        
    }
    }
extension ViewController{
    func setdelegate(collectionview:UICollectionView){
        collectionview.delegate = self
        collectionview.dataSource = self
    }
    


}
