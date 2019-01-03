//
//  CharacterViewController.swift
//  RickAndMortyApp
//
//  Created by Jeffrey Almonte on 12/27/18.
//  Copyright © 2018 Jeffrey Almonte. All rights reserved.
//

import UIKit

class CharacterViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var characters = [CharacterInfo](){
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        dump(characters)
       
        tableView.dataSource = self
        tableView.delegate = self


    }
    func loadData() {
        RickAndMortyAPIClient.getCharacters{(error, characters) in
            if let error = error {
                print(error.errorMessage())
            }
            else if let characters = characters {
                    self.characters = characters
            }
        }
    }
}
extension CharacterViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "characterCell", for: indexPath) as? CharacterCell else {return UITableViewCell()}
        
        let characterToSet = characters[indexPath.row]
        guard let image = URL.init(string: characterToSet.image) else { return UITableViewCell() }
        do {
            let data = try Data.init(contentsOf: image)
            cell.cellImage?.image = UIImage.init(data: data)
        } catch {
            print(error)
        }
        cell.cellName.text = characterToSet.name
        
        return cell
    }
    
    
}
extension CharacterViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
