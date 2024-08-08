//
//  fetchParcelTableViewCell.swift
//  Design Task
//
//  Created by Umer Farooq on 08/08/2024.
//

import UIKit

class fetchParcelTableViewCell: UITableViewCell {

    
    
    @IBOutlet var btn_getCode : UIButton?
    
    @IBOutlet var img_status : UIImageView?
    @IBOutlet var img_logo : UIImageView?
    
    @IBOutlet var lbl_company_name : UILabel?
    @IBOutlet var lbl_date : UILabel?
    @IBOutlet var lbl_time : UILabel?
    @IBOutlet var lblcode : UILabel?
    @IBOutlet var lbl_address : UILabel?
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
