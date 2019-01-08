//
//  EpisodeDetailController.swift
//  RickAndMortyApp
//
//  Created by Jeffrey Almonte on 1/7/19.
//  Copyright © 2019 Jeffrey Almonte. All rights reserved.
//

import UIKit

class EpisodeDetailController: UIViewController {
    var episodes: EpisodeInfo!
    @IBOutlet weak var id: UILabel!
    
    @IBOutlet weak var airDate: UILabel!
    
    @IBOutlet weak var characters: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = episodes.name
        id?.text = "\(episodes.id)"
        airDate.text = episodes.airDate
        
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
