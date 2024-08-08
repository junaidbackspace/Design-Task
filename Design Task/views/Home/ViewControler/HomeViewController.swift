//
//  HomeViewController.swift
//  Design Task
//
//  Created by Umer Farooq on 08/08/2024.
//

import UIKit

class HomeViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    let productsImage : [String] = ["camera","shoes","watch","shoes2","camera","shoes"]
    let productsName : [String] = ["Camera","Jogar","Watch","Sneaker","Camera","Shoes"]
    let productsQuantity : [String] = ["23","132","79","432","542","221"]
    
    @IBOutlet var fetchparcel_btn : UIImageView?
    
    
//MARK:- Functions :- Collection View Data Population
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
       return productsImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.Image_product?.image = UIImage(named: productsImage[indexPath.row])
        cell.Name_product?.text = productsName[indexPath.row]
        cell.quantuty_product?.text = productsQuantity[indexPath.row]
        return cell
        
    }
    

   
    override func viewDidLoad() {
        super.viewDidLoad()

        fetchparcel_btn?.isUserInteractionEnabled = true
       
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        fetchparcel_btn?.addGestureRecognizer(tapGestureRecognizer)

    }
    

    @objc func imageTapped() {
        let nextViewController = self.storyboard!.instantiateViewController(withIdentifier: "fetchparcel")
        nextViewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(nextViewController, animated: true)


       
    }

 
}
