//
//  VolunteerloginsuccessfulViewController.swift
//  Save food
//
//  Created by Hiloni Mehta on 19/03/18.
//  Copyright © 2018 Hiloni Mehta. All rights reserved.
//

import UIKit

class VolunteerloginsuccessfulViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    var myarray1 = [String]()
    var myarray2 = [String]()
    var myarray5 = [String]()
    var myarray7 = [String]()
    var stat = "Not Accepted"

    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /*let defaults = UserDefaults.standard
    let myarray = defaults.stringArray(forKey: "xyz") ?? [String]()
    print(myarray)
    myarray1 = myarray
    print(myarray1)*/
    
    
    @IBAction func ActionBtnPressed(_ sender: Any) {
        
        stat = "Accepted"
        print(stat)
        
        self.tableview.reloadData()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VolunteerCell", for: indexPath) as! volunteercell
        cell.appquantity.text = myarray1[indexPath.row]
        cell.pickuptime.text = myarray2[indexPath.row]
        cell.deliverfrom.text = myarray5[indexPath.row]
        cell.DeliverTo.text = myarray7[indexPath.row]
        cell.status.text = stat
        
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        let myarray = defaults.stringArray(forKey: "xyz") ?? [String]()
        print(myarray)
        myarray1 = myarray
        print(myarray1)
        // Do any additional setup after loading the view.
        
        let defaults1 = UserDefaults.standard
        let myarray3 = defaults1.stringArray(forKey: "time") ?? [String]()
        print(myarray3)
        myarray2 = myarray3
        print(myarray2)
        
        //donoraddress
        
        let defaults2 = UserDefaults.standard
        let myarray4 = defaults2.stringArray(forKey: "donoraddress") ?? [String]()
        print(myarray4)
        myarray5 = myarray4
        print(myarray5)
        
        //charityaddress
        
        let defaults3 = UserDefaults.standard
        let myarray6 = defaults3.stringArray(forKey: "charityaddress") ?? [String]()
        print(myarray6)
        myarray7 = myarray6
        print(myarray7)
        
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
