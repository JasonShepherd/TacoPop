//
//  MainVC.swift
//  TacoPop
//
//  Created by Jason Shepherd on 6/18/17.
//  Copyright © 2017 Jason Shepherd. All rights reserved.
//

import UIKit



class MainVC: UIViewController, DataServiceDelegate, Shakeable{
    
    
    
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView:UICollectionView!
    
    var ds: DataService = DataService.instance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ds.delegate = self
        ds.loadDeliciousTacoData()
        ds.tacoArray.shuffle()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(TacoCell.self)
        
                headerView.addDropShadow()
 
    }

    func loadDeliciousTacoData() {
        print ("Delicious Taco")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}


extension MainVC: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
   
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        cell.configureCell(taco: ds.tacoArray[indexPath.row])
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell{
            cell.shake()
        }
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
        
    }
    
}
