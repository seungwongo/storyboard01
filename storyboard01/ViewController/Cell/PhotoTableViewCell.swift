//
//  PhotoTableViewCell.swift
//  storyboard01
//
//  Created by Seungwon Go on 2017. 11. 29..
//  Copyright © 2017년 ReturnValues. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
