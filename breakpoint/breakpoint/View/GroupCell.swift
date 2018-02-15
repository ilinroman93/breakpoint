//
//  GroupCell.swift
//  breakpoint
//
//  Created by Ильин Роман on 15.02.2018.
//  Copyright © 2018 Romax. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {
    
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var groupDescLbl: UILabel!
    @IBOutlet weak var memberCountLbl: UILabel!
    

    func configureCell(title: String, description: String, memberCount: Int) {
        self.groupTitleLbl.text = title
        self.groupDescLbl.text = description
        self.memberCountLbl.text = "\(memberCount) members."
    }
}
