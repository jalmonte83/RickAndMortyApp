//
//  EpisodeViewController.swift
//  RickAndMortyApp
//
//  Created by Jeffrey Almonte on 1/7/19.
//  Copyright © 2019 Jeffrey Almonte. All rights reserved.
//

import UIKit

class EpisodeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    var episodes = [EpisodeInfo](){
        didSet {
            DispatchQueue.main.async {
               self.tableView.reloadData()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
dump(episodes)
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    func loadData() {
        RickAndMortyAPIClient.getEpisodes { (error, episodes) in
            if let error = error {
                print(error.errorMessage())
            } else if let episodes = episodes {
                self.episodes = episodes
            }
        }
    }

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? EpisodeDetailController,
            let cellSelected = tableView.indexPathForSelectedRow else {return}
        let episodeSelected = episodes[cellSelected.row]
        destination.episodes = episodeSelected
    }
}
extension EpisodeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "episodeCell", for: indexPath) as? EpisodeCell else { return UITableViewCell()}
        let episodeToSet = episodes[indexPath.row]
        cell.cellName.text = episodeToSet.name
        
        cell.cellImage.image = UIImage(named: "RickMortyPortalGun")
        return cell
    }
}
extension EpisodeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
