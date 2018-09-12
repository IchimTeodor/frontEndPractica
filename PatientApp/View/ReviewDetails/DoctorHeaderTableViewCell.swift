//
//  DoctorHeaderTableViewCell.swift
//  PatientApp
//
//  Created by Practica on 9/4/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class DoctorHeaderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabelDoctors: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
