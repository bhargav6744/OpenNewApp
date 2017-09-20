//
//  ViewController.swift
//  Open Another App
//
//  Created by Hitesh V-PI on 29/06/17.
//  Copyright © 2017 Pixabit Infotech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openInstagram(_ sender: UIButton) {
        let instagramHooks = "instagram://"
        let instagramUrl = URL(string: instagramHooks)
        if UIApplication.shared.canOpenURL(instagramUrl! as URL)
        {
            UIApplication.shared.open(instagramUrl!)
            
        } else {
            //redirect to safari because the user doesn't have Instagram
            print("App not installed")
            UIApplication.shared.open(URL(string: "https://itunes.apple.com/in/app/instagram/id389801252?mt=8")!)
        }

        
        
        
        
    }
    
}

