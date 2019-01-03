//
//  CharacterCell.swift
//  RickAndMortyApp
//
//  Created by Jeffrey Almonte on 12/27/18.
//  Copyright © 2018 Jeffrey Almonte. All rights reserved.
//

import UIKit

class CharacterCell: UITableViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
