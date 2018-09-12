//
//  HeaderTableViewCell.swift
//  PatientApp
//
//  Created by Practica on 8/30/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit


class HeaderTableViewCell: UITableViewCell  {

    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
