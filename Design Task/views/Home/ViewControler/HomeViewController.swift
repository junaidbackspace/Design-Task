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
    @IBOutlet var searchbar_view : UIView?
    @IBOutlet var fetchparcel_view : UIView?
    
    
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
        searchbar_view?.layer.cornerRadius = 12
        fetchparcel_btn?.isUserInteractionEnabled = true
        
        fetchparcel_view?.layer.cornerRadius = (fetchparcel_view?.frame.size.width)! / 2
        
        //shadow effect
        fetchparcel_view?.layer.shadowColor = UIColor.blue.cgColor
        fetchparcel_view?.layer.shadowOpacity = 0.3
        fetchparcel_view?.layer.shadowOffset = CGSize(width: 0, height: 5)
        fetchparcel_view?.layer.shadowRadius = 10
       
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        fetchparcel_btn?.addGestureRecognizer(tapGestureRecognizer)

    }
    

    @objc func imageTapped() {
        let nextViewController = self.storyboard!.instantiateViewController(withIdentifier: "fetchparcel")
        nextViewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(nextViewController, animated: true)


       
    }

 
}
