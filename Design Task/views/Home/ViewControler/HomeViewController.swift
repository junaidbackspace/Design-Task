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
    
    
//MARK:- Collection View Data Population
    
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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
