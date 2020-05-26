//
//  TableViewCell.swift
//  Save food
//
//  Created by Hiloni Mehta on 12/05/18.
//  Copyright © 2018 Hiloni Mehta. All rights reserved.
//

import UIKit

class volunteercell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var appquantity: UILabel!
    //@IBOutlet weak var Pickuptime: UILabel!
    
    @IBOutlet weak var pickuptime: UILabel!
    @IBOutlet weak var deliverfrom: UILabel!
    @IBOutlet weak var DeliverTo: UILabel!
    
    @IBOutlet weak var status: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
