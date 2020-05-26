//
//  DonorloginsuccessfulViewController.swift
//  Save food
//
//  Created by Hiloni Mehta on 19/03/18.
//  Copyright © 2018 Hiloni Mehta. All rights reserved.
//

import UIKit

class DonorloginsuccessfulViewController: UIViewController{
    @IBOutlet weak var appquant: UITextField!
    
    @IBOutlet weak var pickuptime: UITextField!
    
    
    @IBOutlet weak var specialinstructions: UITextView!
    
    var quant = [String]()
    //var quant: String = ""
    //var time: String = ""
    var time = [String]()
    var instructions: String = ""
    var i = 0
    
    //quant = appquant.text
    
    @IBAction func Btnpressed(_ sender: Any) {
        
        //let array = ["horse","cow","camel","sheep","goat"]
        quant.append(appquant.text!)
        print(quant)
        let defaults = UserDefaults.standard
        defaults.set(quant,forKey: "xyz")
        //quant[i] = appquant.text!
        //UserDefaults.standard.set(quant,forKey: "Key")
        //print(quant)
        //return(quant)
        //time = pickuptime.text!
        //print(time)
        //return(time)
        
        time.append(pickuptime.text!)
        print(time)
        let defaults1 = UserDefaults.standard
        defaults1.set(time,forKey: "time")
        //quant[i] = appquant.text!
        //UserDefaults.standard.set(quant,forKey: "Key")
        //print(quant)
        //return(quant)
        //time = pickuptime.text!
        //print(time)
        
        /*func textFieldShouldReturn(_textField: UITextField) -> Bool;)do {
        textField.resignFirstResponder()
            return true
        }*/
        
        /*func textFieldDidEndEditing(appquant: UITextField) {
            //quant = appquant.text!
            print(appquant.text!)
        }
        
        func textFieldDidEndEditing(pickuptime: UITextField) {
            //time = pickuptime.text!
            print(pickuptime.text!)}
        func textFieldDidEndEditing(specialinstructions: UITextField) {
            //instructions = specialinstructions.text!
            print(specialinstructions.text!)
        }*/
    }
    /*func textFieldDidEndEditing(appquant: UITextField) {
        quant = appquant.text!
        print(quant)
    }
    
    func textFieldDidEndEditing(pickuptime: UITextField) {
        time = pickuptime.text!
        print(time)
    }
    
    func textFieldDidEndEditing(specialinstructions: UITextField) {
        instructions = specialinstructions.text!
        print(instructions)
    }*/
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appquant.delegate = self
        pickuptime.delegate = self

        //specialinstructions.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
    
    extension DonorloginsuccessfulViewController : UITextFieldDelegate{
        func textFieldShouldReturn(_textField: UITextField) -> Bool{
            _textField.resignFirstResponder()
            return true
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


