//
//  AppereanceViewController.swift
//  CafesJournal
//
//  Created by elina.zambere on 25/02/2021.
//  Copyright © 2021 Farukh IQBAL. All rights reserved.
//

import UIKit

class AppereanceViewController: UIViewController {
    
    var DarkOn = Bool()
    var LightOn = Bool()
    
    @IBOutlet weak var DarkSwitch: UISwitch!
    @IBOutlet weak var LightSwitch: UISwitch!
    
    let defaults = UserDefaults.standard
    let window = UIApplication.shared.keyWindow

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func detectMode() {
        
        if self.traitCollection.userInterfaceStyle == .dark {
            
            print("Dark Mode")
            DarkSwitch.isOn = true
            LightSwitch.isOn = false
            
        } else {
            
            print("Light Mode")
            DarkSwitch.isOn = false
            LightSwitch.isOn = true
            
        }
        
    }

    @IBAction func DarkAction(_ sender: UISwitch) {
        
        DarkSwitch.isOn = true
        LightSwitch.isOn = false
        window?.overrideUserInterfaceStyle = .dark
        defaults.set(sender.isOn, forKey: "DarkSwitch")
        defaults.removeObject(forKey: "LightSwitch")
        
    }
    
    @IBAction func LightAction(_ sender: UISwitch) {
        
        DarkSwitch.isOn = false
        LightSwitch.isOn = true
        window?.overrideUserInterfaceStyle = .light
        defaults.set(sender.isOn, forKey: "LightSwitch")
        defaults.removeObject(forKey: "DarkSwitch")
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
