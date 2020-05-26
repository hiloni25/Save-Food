//
//  SignUpVolunteerViewController.swift
//  Save food
//
//  Created by Hiloni Mehta on 19/03/18.
//  Copyright © 2018 Hiloni Mehta. All rights reserved.
//

import UIKit

class SignUpVolunteerViewController: UIViewController {

    
    @IBOutlet weak var signupvolunteername: UITextField!
    
    
    @IBOutlet weak var signupvolunteercontactno: UITextField!
    
    @IBOutlet weak var signupvolunteeravailability: UITextField!
    
    @IBOutlet weak var signupvolunteeremail: UITextField!
    
    @IBOutlet weak var signupvolunteerpassword: UITextField!
    
    var username = [String]()
    var password = [String]()
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func SignUpDone(_ sender: Any) {
        username.append(signupvolunteeremail.text!)
        print(username)
        let defaults = UserDefaults.standard
        defaults.set(username,forKey: "vol")
        
        password.append(signupvolunteerpassword.text!)
        print(password)
        let defaults1 = UserDefaults.standard
        defaults1.set(password,forKey: "vol1")
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
