//
//  charitycell.swift
//  Save food
//
//  Created by Hiloni Mehta on 17/04/18.
//  Copyright © 2018 Hiloni Mehta. All rights reserved.
//

import UIKit

class charitycell: UITableViewCell {

    @IBOutlet weak var pickuptime: UILabel!
    
    @IBOutlet weak var quantity: UILabel!
    
    @IBOutlet weak var status: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
   // @IBAction func ActionPerform(_ sender: Any) {
        //CharityloginsuccessfulViewController?.deleteCell(cell: self)
        
        //NotificationCenter.default.post(name: NSNotification.Name(rawValue: "notificationName"), object: nil)

    //}
    /*func deleteCell(cell: UITableViewCell){
        
        print("Hey")
        if let deletionIndexPath = tableView.indexPath(for: cell)
        {
            myarray1.remove(at: deletionIndexPath.row)
            tableView.deleteRows(at: [deletionIndexPath], with: .automatic)
        }
        
    }*/

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
