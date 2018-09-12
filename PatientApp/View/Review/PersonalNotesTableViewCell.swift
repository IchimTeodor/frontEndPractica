//
//  PersonalNotesTableViewCell.swift
//  PatientApp
//
//  Created by Practica on 8/31/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class PersonalNotesTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var personalNotesLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        personalNotesLabel.lineBreakMode = .byCharWrapping
        personalNotesLabel.numberOfLines=2
        personalNotesLabel.text = "This is a very loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong text"
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
