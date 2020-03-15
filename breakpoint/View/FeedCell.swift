//
//  FeedCell.swift
//  breakpoint
//
//  Created by Yunus Emre ARSLAN on 15.03.2020.
//  Copyright © 2020 Yunus Emre ARSLAN. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var contentLabel: UILabel!

    func configureCell(profileImage:UIImage,email:String,content:String){
        self.profileImage.image = profileImage
        self.emailLabel.text = email
        self.contentLabel.text = content
    }

}
