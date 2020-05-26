//
//  DonorVCViewController.swift
//  Save food
//
//  Created by Hiloni Mehta on 19/03/18.
//  Copyright © 2018 Hiloni Mehta. All rights reserved.
//

import UIKit

class DonorVCViewController: UIViewController {
    
    var username1 = [String]()
    var username2 = [String]()
    var password1 = [String]()
    var password2 = [String]()
    
    var performsegue = false

    @IBOutlet weak var donoremail: DesigningTextField!
    @IBOutlet weak var donorpassword: DesigningTextField!
    
    @IBOutlet weak var donorlogin: RoundingButton!
    
    @IBOutlet weak var donorforgotpassword: RoundingButton!
    
    @IBOutlet weak var donorsignup: RoundingButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("printing...")
        let defaults = UserDefaults.standard
        let myarray = defaults.stringArray(forKey: "abc") ?? [String]()
        print(myarray)
        username1 = myarray
        print(username1)
        
        let defaults1 = UserDefaults.standard
        let myarray1 = defaults1.stringArray(forKey: "bcd") ?? [String]()
        print(myarray1)
        password1 = myarray1
        print(password1)
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func LoginBtnPressed(_ sender: Any) {
        
        print("printing...")
        let defaults = UserDefaults.standard
        let myarray = defaults.stringArray(forKey: "abc") ?? [String]()
        print(myarray)
        username2 = myarray
        print(username2)
        
        let defaults1 = UserDefaults.standard
        let myarray1 = defaults1.stringArray(forKey: "bcd") ?? [String]()
        print(myarray1)
        password2 = myarray1
        print(password2)
        username1.append(contentsOf: username2)
        password1.append(contentsOf: password2)
        
        for i in 0..<username1.count{
            for j in 0..<password1.count{
                if i==j{
                    //if  self.usernameTextField.text! == username[0] && self.passwordTextField.text! == password[0] || self.usernameTextField.text! == username[1] && self.passwordTextField.text! == password[1]  {
                    
                    print("yes")
                    
                    print(username1[i])
                    print(password1[j])
                    
                    print(donoremail.text!)
                    print(donorpassword.text!)
                    
                    //if  self.donoremail.text! == username1[0] && self.donorpassword.text! == password1[0] {
                        //|| self.donoremail.text! == username1[1] && self.donorpassword.text! == password1[1]  {
                    if  self.donoremail.text! == username1[i] && self.donorpassword.text! == password1[j]
                    {
                        performsegue = true
                        print(performsegue)
                        performSegue(withIdentifier: "logindsuccessful", sender: nil)
                        break
                        
                    }
                        
                    else{
                        performsegue = false
                        print(performsegue)
                        //for popup -
                        /*let alert = UIAlertController(title: "Incorrect", message: "Enter username and password again", preferredStyle: .alert)
                         let cancelAction = UIAlertAction(title: "cancel", style: .default)
                         alert.addAction(cancelAction)
                         self.present(alert, animated: true, completion:  nil)*/
                    }
                }
            }
        }
        
        if performsegue == false{
            let alert = UIAlertController(title: "Incorrect", message: "Enter username and password again", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "cancel", style: .default)
            alert.addAction(cancelAction)
            self.present(alert, animated: true, completion:  nil)
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
