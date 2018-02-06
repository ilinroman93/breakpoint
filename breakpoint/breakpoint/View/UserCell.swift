//
//  UserCell.swift
//  breakpoint
//
//  Created by Ильин Роман on 06.02.2018.
//  Copyright © 2018 Romax. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var checkImage: UIImageView!
    
    var showing = false
    
    func configureCell(profileImage image: UIImage, email: String, isSelected: Bool) {
        profileImage.image = image
        emailLbl.text = email
        if isSelected {
            self.checkImage.isHidden = false
        } else {
            self.checkImage.isHidden = true
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            if self.showing == false {
                self.checkImage.isHidden = false
                self.showing = true
            } else {
                self.checkImage.isHidden = true
                self.showing = false
            }
        }
    }
}
