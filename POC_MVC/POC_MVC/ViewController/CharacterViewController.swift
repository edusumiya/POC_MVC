//
//  ViewController.swift
//  POC_MVC
//
//  Created by resource on 05/03/2018.
//  Copyright © 2018 Sumiya. All rights reserved.
//

import UIKit

class CharacterViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblHairColor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let character = CharacterAPI.sharedInstance.GetCharacter()
        SetCharacter(character: character)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func SetCharacter(character : CharacterModel) {
        lblName.text = character.name
        lblHeight.text = character.height
        lblHairColor.text = character.hair_color
    }
}

