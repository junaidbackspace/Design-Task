//
//  FetchParcelViewController.swift
//  Design Task
//
//  Created by Umer Farooq on 08/08/2024.
//

import UIKit


class FetchParcelViewController: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource{
    
    let productsImage : [String] = ["lipstick","brush","powder","lipstick","brush","powder"]
    
    
    //MARK:- Outlets
    
    @IBOutlet var all_btn : UIButton?
    @IBOutlet var notFetched_btn : UIButton?
    @IBOutlet var fetched_btn : UIButton?
    
    @IBOutlet var all_view : UIView?
    @IBOutlet var notFetched_view : UIView?
    @IBOutlet var fetched_view : UIView?
    
    @IBOutlet var infoboard1_view : UIView?
    @IBOutlet var infoboard2_view : UIView?
    
    @IBOutlet var title1_lbl : UILabel?
    @IBOutlet var title2_lbl : UILabel?
    
    
    
    //MARK:- Actions
    
    
    @IBAction func back_buttonTapped(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)

    }
    @IBAction func All_buttonTapped(_ sender: UIButton) {
        
        //making button selected
        all_btn?.setTitleColor(UIColor.white, for: .normal)
        all_view?.backgroundColor = UIColor.blue
        
        //view background reseting
        notFetched_view?.backgroundColor = UIColor.white
        fetched_view?.backgroundColor = UIColor.white
        
        //button color reseting
        notFetched_btn?.setTitleColor(UIColor.blue, for: .normal)
        fetched_btn?.setTitleColor(UIColor.blue, for: .normal)
        
        
        //changing data of viewboards
        title1_lbl?.text = "Building A, Unit 3 station"
        title2_lbl?.text = "Building C, Unit 2 station"
    }
    @IBAction func NotFetched_buttonTapped(_ sender: UIButton) {
        
        //making button selected
        notFetched_btn?.setTitleColor(UIColor.white, for: .normal)
        notFetched_view?.backgroundColor = UIColor.blue
        
        //view background reseting
        all_view?.backgroundColor = UIColor.white
        fetched_view?.backgroundColor = UIColor.white
        
        //button color reseting
        all_btn?.setTitleColor(UIColor.blue, for: .normal)
        fetched_btn?.setTitleColor(UIColor.blue, for: .normal)
        
        //changing data of viewboards
        title1_lbl?.text = "Building D, Unit 4 station"
        title2_lbl?.text = "Building E, Unit 1 station"
    }
    @IBAction func Fetched_buttonTapped(_ sender: UIButton) {
        
        //making button selected
        fetched_btn?.setTitleColor(UIColor.white, for: .normal)
        fetched_view?.backgroundColor = UIColor.blue
        
        //view background reseting
        notFetched_view?.backgroundColor = UIColor.white
        all_view?.backgroundColor = UIColor.white
        
        //button color reseting
        all_btn?.setTitleColor(UIColor.blue, for: .normal)
        notFetched_btn?.setTitleColor(UIColor.blue, for: .normal)
        
        //changing data of viewboards
        title1_lbl?.text = "Building R, Unit 5 station"
        title2_lbl?.text = "Building Q, Unit 9 station"
    }
    
    
    
    
    //MARK:- Functions :- Collection View Data Population
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productsImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FetchParcelCollectionViewCell
        cell.slider_pic?.image = UIImage(named: productsImage[indexPath.row])
        return cell
    }
    
    func uisetup()
    {
        //preselection of Allbutton
        all_btn?.setTitleColor(UIColor.white, for: .normal)
        all_view?.backgroundColor = UIColor.blue
        
        //applying border
        infoboard1_view?.layer.borderWidth = 0.5
        infoboard1_view?.layer.borderColor = UIColor.gray.cgColor
        
        
        infoboard2_view?.layer.borderWidth = 0.5
        infoboard2_view?.layer.borderColor = UIColor.gray.cgColor
    }
    
    
    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()

        uisetup()
        
    }
    

   

}
