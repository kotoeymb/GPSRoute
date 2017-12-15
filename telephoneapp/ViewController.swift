//
//  ViewController.swift
//  telephoneapp
//
//  Created by Toe Wai Aung on 12/15/17.
//  Copyright © 2017 com.kotoe.ymb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func route(_ sender: Any) {
       
        let strLat : String = "16.779262"
        let strLong : String = "96.144750"
//        if let url = URL(string: "\(myUrl)") {
//            UIApplication.shared.open(url, options: [:], completionHandler: nil)
//        }
        if (UIApplication.shared.canOpenURL(NSURL(string:"comgooglemaps://")! as URL)) {
            UIApplication.shared.open(NSURL(string:
                "comgooglemaps://?saddr=&daddr=\(strLat),\(strLong)&directionsmode=driving")! as URL, options: [:], completionHandler: nil)
            
        } else {
            NSLog("Can't use comgooglemaps://");
        }
    }
//        if (UIApplication.shared.canOpenURL(NSURL(string:"comgooglemaps://")! as URL)) {
//            UIApplication.shared.open(NSURL(string: "comgooglemaps://?saddr=&daddr=\(String(describing: strLat)),\(String(describing: strLong))")! as URL, options: [:], completionHandler: nil)
//
//        } else {
//            UIApplication.shared.openURL(NSURL(string:
//                "https://www.google.com/maps/dir/?saddr=&daddr=\(String(describing: strLat)),\(String(describing: strLong))")! as URL) // options: [:], completionHandler: nil)
//        }

        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func phoneCall(_ sender: Any) {
        phone(phoneNum: "09785590865")
    }
    func phone(phoneNum: String) {
        if let url = URL(string: "tel://\(phoneNum)") {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(url as URL)
            }
        }
    }
    
}

