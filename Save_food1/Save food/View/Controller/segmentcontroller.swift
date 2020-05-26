//
//  segmentViewController.swift
//
//  Created by Hiloni Mehta on 15/03/18.
//  Copyright © 2018 Hiloni Mehta. All rights reserved.
//
    
    import UIKit
    
    class segmentcontroller: UIViewController {
        
        var container : ContainerViewController!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toContainer"{
                self.container = segue.destination as! ContainerViewController
            }
        }
            
       // @IBAction func selectedsegment(_ sender: UISegmentedControl) {
            
            
        @IBAction func selectedsegmentt(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
                container.segueIdentifierReceivedFromParent("ToDonor")
            }
            if sender.selectedSegmentIndex == 1{
                container.segueIdentifierReceivedFromParent("ToCharity")
            }
            if sender.selectedSegmentIndex == 2{
                container.segueIdentifierReceivedFromParent("ToVolunteer")
            }
        }
}
        /*if pevSegment.selectedSegmentIndex == 0{
         print("Pic")
         //return
         //self.performSegue(withIdentifier: "topictures", sender: self)
         }
         else if pevSegment.selectedSegmentIndex == 1{
         print("Events")
         self.performSegue(withIdentifier: "toevents", sender: self)
         }
         else if pevSegment.selectedSegmentIndex == 2{
         print("Venues")
         self.performSegue(withIdentifier: "toVenues", sender: self)
         }*/
        
