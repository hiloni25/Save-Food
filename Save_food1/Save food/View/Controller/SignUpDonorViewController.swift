//
//  SignUpDonorViewController.swift
//  Save food
//
//  Created by Hiloni Mehta on 19/03/18.
//  Copyright © 2018 Hiloni Mehta. All rights reserved.
//

import UIKit

class SignUpDonorViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var signupdonorname: UITextField!
    
    @IBOutlet weak var signupdonoraddress: UITextField!

    @IBOutlet weak var signupdonoremail: UITextField!
    
    @IBOutlet weak var signupdonorusername: UITextField!
    
    
    @IBOutlet weak var signupdonorpassword: UITextField!
    
    var username = [String]()
    var password = [String]()
    var address = [String]()
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func SignUpDone(_ sender: Any) {
        
        username.append(signupdonoremail.text!)
        print(username)
        let defaults = UserDefaults.standard
        defaults.set(username,forKey: "abc")
        
        password.append(signupdonorpassword.text!)
        print(password)
        let defaults1 = UserDefaults.standard
        defaults1.set(password,forKey: "bcd")
        
        address.append(signupdonoraddress.text!)
        print(address)
        let defaults2 = UserDefaults.standard
        defaults2.set(address,forKey: "donoraddress")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
