//
//  RecipeCell.swift
//  RecipeFinder
//
//  Created by PABLO GUARDADO ALVAREZ on 29/11/18.
//  Copyright © 2018 PABLO GUARDADO ALVAREZ. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {

    @IBOutlet weak var lblrecipe: UILabel!
    
    @IBOutlet weak var imgRecipe: UIImageView!
    
    @IBOutlet weak var lbldes: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        lblrecipe.layer.cornerRadius = 8
        lbldes.layer.cornerRadius = 8
        lblrecipe.layer.masksToBounds = true
        lbldes.layer.masksToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
