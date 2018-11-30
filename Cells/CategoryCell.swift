//
//  CategoryCell.swift
//  RecipeFinder
//
//  Created by PABLO GUARDADO ALVAREZ on 28/11/18.
//  Copyright © 2018 PABLO GUARDADO ALVAREZ. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var lblCategoryCell: UILabel!
    
    @IBOutlet weak var lblRecipesCount: UILabel!
    
    @IBOutlet weak var imgCategoryCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        lblCategoryCell.layer.cornerRadius = 8
        lblRecipesCount.layer.cornerRadius = 8
        lblCategoryCell.layer.masksToBounds = true
        lblRecipesCount.layer.masksToBounds = true
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }
    
}
