//
//  LeagueVC.swift
//  swooshApp
//
//  Created by Hayan Dayoub on 13.02.24.
//

import UIKit

class LeagueVC: UIViewController {

    var player:Player!
    
    @IBOutlet weak var nextBtn: GetStartedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     player = Player()


    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
  
    @IBAction func onMensTapped(_ sender: Any) {
        selectedLeague(LeagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
       selectedLeague(LeagueType: "womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectedLeague(LeagueType: "coed")
    }
    
    func selectedLeague(LeagueType: String){
        player.desiredLeague = LeagueType
        nextBtn.isEnabled = true
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
        
    }
}
