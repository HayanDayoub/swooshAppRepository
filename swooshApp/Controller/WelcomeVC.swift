//
//  ViewController.swift
//  swooshApp
//
//  Created by Hayan Dayoub on 11.02.24.
//

import UIKit

class WelcomeVC: UIViewController {
    
   
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func getStartedTapped(_ sender: Any) {
        performSegue(withIdentifier: "LeagueVCSegue", sender: self)
    }
    
    @IBAction func unwindSkillVC(unwindSegue: UIStoryboardSegue){
    }
}
