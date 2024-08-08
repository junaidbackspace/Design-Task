//
//  FetchParcelViewController.swift
//  Design Task
//
//  Created by Umer Farooq on 08/08/2024.
//

import UIKit


struct parcel{
    let address : String
    let name : String
    let date : String
    let time :  String
    let code :  String
    let status : Bool
    let showBtn : Bool
}
class FetchParcelViewController: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource ,UITableViewDelegate, UITableViewDataSource{
    
    
  
    
    
    let productsImage : [String] = ["lipstick","brush","powder","lipstick","brush","powder"]
    var array = [parcel]()
    
    //MARK:- Outlets
    
    
    @IBOutlet var table : UITableView?
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
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! fetchParcelTableViewCell
        cell.lbl_company_name?.text = array[indexPath.row].name
        cell.lbl_date?.text = array[indexPath.row].date
        cell.lbl_time?.text = array[indexPath.row].time
        cell.lbl_address?.text = array[indexPath.row].address
        
        
        if array[indexPath.row].showBtn {
            print("Entered in show btn: \(indexPath.row)")
            cell.btn_getCode?.isHidden = false
            cell.lblcode?.isHidden = true
        }
        else{
            print("Entered in show COde: \(indexPath.row)")
            cell.btn_getCode?.isHidden = false
            cell.btn_getCode?.isHidden = true
            cell.lblcode?.text = array[indexPath.row].code
        }
        
        
        if array[indexPath.row].status{
            cell.img_status?.tintColor = UIColor.orange
        }
        else{
            cell.img_status?.tintColor = UIColor.gray
        }
               return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 180 // Custom row height
        }

   
    
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
        notFetched_view?.layer.cornerRadius = 12
        
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
        fetched_view?.layer.cornerRadius = 12
        
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
        all_view?.layer.cornerRadius = 12
        
        //applying border
        infoboard1_view?.layer.borderWidth = 0.5
        infoboard1_view?.layer.borderColor = UIColor.gray.cgColor
        
        
        infoboard2_view?.layer.borderWidth = 0.5
        infoboard2_view?.layer.borderColor = UIColor.gray.cgColor
    }
    
    
    
    
    

  
    override func viewDidLoad() {
        super.viewDidLoad()

        
        array.append(parcel(address: "Building A, Unit 3 station", name: "DHL Express", date: "11-05-2017", time: "17:45:01", code: "4785 5258 36", status: false, showBtn: false))
        array.append(parcel(address: "Building C, Unit 1 station", name: "DHL Express", date: "11-05-2017", time: "17:45:01", code: "4785 5258 36", status: true, showBtn: true))
        uisetup()
        
        // Disable default separators
       
    }
    

   

}
