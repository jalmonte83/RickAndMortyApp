//
//  CharacterDetailController.swift
//  RickAndMortyApp
//
//  Created by Jeffrey Almonte on 12/28/18.
//  Copyright © 2018 Jeffrey Almonte. All rights reserved.
//

import UIKit

class CharacterDetailController: UIViewController {
    var characters: CharacterInfo!
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var species: UILabel!
    @IBOutlet weak var origin: UILabel!
    @IBOutlet weak var status: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = characters.name
        species.text = characters.species
        origin.text = characters.origin.name
        status.text = characters.status
        guard let imageUrl = URL.init(string: characters.image) else { return }
        do {
           let data = try Data.init(contentsOf: imageUrl)
            image.image = UIImage.init(data: data)
        } catch {
            print("error")
        }
    }
    

   

}
