//
//  ImageTableViewCell.swift
//  MusicPlayer
//
//  Created by ddukk9 on 15/11/22.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCar: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
