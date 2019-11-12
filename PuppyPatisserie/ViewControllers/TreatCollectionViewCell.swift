//
//  TreatCollectionViewCell.swift
//  PuppyPatisserie
//
//  Created by Madison Kaori Shino on 11/11/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

class TreatCollectionViewCell: UICollectionViewCell {
    
    //Properties
    var treat: Treat? {
        didSet {
            setView()
        }
    }
    
    //Outlets
    @IBOutlet weak var treatImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //Helper Functions
    func setView() {
        self.backgroundColor = taupe
        self.layer.cornerRadius = 25
        self.layer.shadowRadius = 15
        self.layer.shadowColor = orange.cgColor
        self.layer.shadowOpacity = 1
        guard let treat = self.treat else { return }
            nameLabel.text = treat.name
            descriptionLabel.text = treat.description
    }
}
