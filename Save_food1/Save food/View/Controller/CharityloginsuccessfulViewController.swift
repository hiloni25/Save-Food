//
//  CharityloginsuccessfulViewController.swift
//  Save food
//
//  Created by Hiloni Mehta on 19/03/18.
//  Copyright © 2018 Hiloni Mehta. All rights reserved.
//

import UIKit


class CharityloginsuccessfulViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    //@IBOutlet weak var charity: UITableViewCell!
    @IBOutlet weak var tableView: UITableView!
    
    //@IBOutlet weak var charitycell1: charitycell!
    var i = 0
    var myarray1 = [String]()
    var myarray2 = [String]()
    var stat = "Not Accepted"
    
    var action1 = false;
   
    /*func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharityCell", for: indexPath) as! charitycell
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }*/
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //for(i=0;i++)
        //{
        //print(UserDefaults.standard.string(forKey: "Key")!)
        //}
        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        let myarray = defaults.stringArray(forKey: "xyz") ?? [String]()
        print(myarray)
        myarray1 = myarray
        print(myarray1)
        
        let defaults1 = UserDefaults.standard
        let myarray3 = defaults1.stringArray(forKey: "time") ?? [String]()
        print(myarray3)
        myarray2 = myarray3
        print(myarray2)
        
        //NotificationCenter.default.addObserver(self, selector: "deleteCell", name: NSNotification.Name(rawValue: "notificationName"), object: nil)
        
        /*func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            print(myarray.count)
            return myarray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CharityCell", for: indexPath) as! charitycell
            return (cell)
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 150
        }*/
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myarray1.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharityCell", for: indexPath) as! charitycell
        cell.quantity.text = myarray1[indexPath.row]
        cell.pickuptime.text = myarray2[indexPath.row]
        cell.status.text = stat
        
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    /*unc tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool{
    return true
    }
    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.myarray1.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }*/
    
    /*func tableView(_tableView: UITableView, commit editingStyle:  UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if(editingStyle == .delete)
        {
            myarray1.remove(at: indexPath.item)
            tableView.deleteRows(at: [IndexPath], with: .automatic)
        }
    }*/
 
    
    
    @IBAction func AcceptBtnPressed(_ sender: UIButton){
        
        print("Accept Pressed")
        //action1 = true
        
        print(myarray1)
        self.stat = "Accepted"
        print(stat)
        
        let indexPathRow:Int = 0
        let indexPosition = IndexPath(row: indexPathRow, section: 0)
        tableView.reloadRows(at: [indexPosition], with: .none)
        
        //let indexPath = IndexPath(item: row, section: 0)
        //tableView.reloadRows(at: [indexPath], with: .fade)
        
        //let indexPath = IndexPath(item: rowNumber, section: 0)
        //tableView.reloadRows(at: [indexPath], with: .top)
        //self.tableView.reloadData()
        //in order to reload your entire table or
        //self.tableView.reloadRowsAtIndexPaths(IndexPath, withRowAnimation: UITableViewRowAnimation.None)
        
        /*func tableView(_tableView: UITableView, commit editingStyle:  UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
            
            //self.tableView.reloadRowsAtIndexPaths(at: IndexPath, withRowAnimation: UITableViewRowAnimation.None)
        }*/
        
        
        
        //self.tableView.reloadRows(at: , with: UITableViewRowAnimation.none)
        /*func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return myarray1.count
            
        }*/
        
        /*func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CharityCell", for: indexPath) as! charitycell
            cell.quantity.text = myarray1[indexPath.row]
            cell.pickuptime.text = myarray2[indexPath.row]
            cell.status.text = stat
            
            return (cell)
        }*/
        
        /*func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 150
        }*/
        
        
        //NotificationCenter.default.addObserver(self, selector: "deleteCell", name: NSNotification.Name(rawValue: "notificationName"), object: nil)

        //deleteCell(cell: charity.self)
        //deleteCell(cell: tableView.self)
        //deleteCell(cell: UITableViewCell)
        
          /*func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
            let delete = UITableViewRowAction(style: .destructive, title: "delete") { (action, indexPath) in
                // delete item at indexPath
                
            }
            
            let action2 = UITableViewRowAction(style: .normal, title: "action2") { (action, indexPath) in
                // action2 item at indexPath
            }
            
            return [delete, action2]
        }*/
        
        /*func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
            if (editingStyle == UITableViewCellEditingStyle.delete) {
                myarray1.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath as IndexPath], with: UITableViewRowAnimation.automatic)
            }
        }*/
        
        /*func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
            if (self.tableView.editing) {
                return UITableViewCellEditingStyle.Delete
            }
            return UITableViewCellEditingStyle.None
        }*/
        
        /*func tableView(_tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
            //if (self.tableView.isEditing) {
                myarray1.remove(at: indexPath.item)
                print(myarray1)
                return UITableViewCellEditingStyle.delete
                print(myarray1)
            }*/
            
            //return UITableViewCellEditingStyle.none;
        //}

        //performaction()
        
        //action1 = true
        //print(action1)
        //return action1
        
        
        /*func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool{
            return true
        }
        
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                self.myarray1.remove(at: indexPath.row)
                print(myarray1)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }*/
        /*func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool{
         return true
        }
        
        override func tableView(_tableView: UITableView, commit editingStyle:  UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
            if(editingStyle == .delete)
            {
                myarray1.remove(at: indexPath.item)
                tableView.deleteRows(at: [IndexPath], with: .automatic)
        }
        }*/
    }
    
    //NotificationCenter.default.addObserver(self, selector: "deleteCell", name: NSNotification.Name(rawValue: "notificationName"), object: nil)

    
    func deleteCell(cell: UITableViewCell){
     
        print("Hey")
        if let deletionIndexPath = tableView.indexPath(for: cell)
        {
            myarray1.remove(at: deletionIndexPath.row)
            tableView.deleteRows(at: [deletionIndexPath], with: .automatic)
        }
        
    }
    
    func performaction()
    {
        print("hello")

        func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool{
            return true
        }
        
           /*func tableView(_tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
            if (self.tableView.isEditing) {
                return UITableViewCellEditingStyle.delete
            }
            
            return UITableViewCellEditingStyle.none;
        }*/

        
        /*func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool{
        return true
    }*/
    
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        //if editingStyle == .delete {
            self.myarray1.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            print(myarray1)
        //}
    }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
