//
//  CharacterDetailController.swift
//  RickAndMortyApp
//
//  Created by Jeffrey Almonte on 12/28/18.
//  Copyright © 2018 Jeffrey Almonte. All rights reserved.
//

import UIKit

class CharacterDetailController: UIViewController {
    var characters = [CharacterInfo]()
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var species: UILabel!
    @IBOutlet weak var origin: UILabel!
    @IBOutlet weak var status: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // name.text = characters
        // Do any additional setup after loading the view.
    }
    

   

}
