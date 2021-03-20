//
//  PostCell.swift
//  insta
//
//  Created by Mark Cruz on 3/16/21.
//

import UIKit

class PostCell: UITableViewCell {
    @IBOutlet weak var postedImage: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var comment: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
