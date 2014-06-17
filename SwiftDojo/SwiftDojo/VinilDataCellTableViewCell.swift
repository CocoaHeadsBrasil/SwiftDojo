//
//  VinilDataCellTableViewCell.swift
//  SwiftDojo
//
//  Created by Tales Pinheiro De Andrade on 14/06/14.
//  Copyright (c) 2014 Tales Pinheiro De Andrade. All rights reserved.
//

import UIKit

class VinilDataCellTableViewCell: UITableViewCell {

    @IBOutlet var pictureImageView : UIImageView
    
    @IBOutlet var albumLabel : UILabel
    
    @IBOutlet var artistLabel : UILabel
    
    init(style: UITableViewCellStyle, reuseIdentifier: String) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Initialization code
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
