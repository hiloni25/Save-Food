//
//  SignUpCharityViewController.swift
//  Save food
//
//  Created by Hiloni Mehta on 19/03/18.
//  Copyright © 2018 Hiloni Mehta. All rights reserved.
//

import UIKit

class SignUpCharityViewController: UIViewController {

    
    @IBOutlet weak var signupcharityname: UITextField!
    
    @IBOutlet weak var signupcharityaddress: UITextField!
    
    
    @IBOutlet weak var signupcharityemail: UITextField!
    
    @IBOutlet weak var signupcharitypassword: UITextField!
    
    var username = [String]()
    var password = [String]()
    var address = [String]()
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func SignUpdone(_ sender: Any) {
        
        username.append(signupcharityemail.text!)
        print(username)
        let defaults = UserDefaults.standard
        defaults.set(username,forKey: "chari")
        
        password.append(signupcharitypassword.text!)
        print(password)
        let defaults1 = UserDefaults.standard
        defaults1.set(password,forKey: "chari1")
        
        address.append(signupcharityaddress.text!)
        print(address)
        let defaults2 = UserDefaults.standard
        defaults2.set(address,forKey: "charityaddress")
        
        
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
