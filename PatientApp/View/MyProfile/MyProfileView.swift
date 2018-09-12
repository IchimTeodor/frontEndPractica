//
//  MyProfileView.swift
//  PatientApp
//
//  Created by Practica on 9/11/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

class MyProfileView: UIView {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var dateOfHospitalizationLabel: UILabel!
    @IBOutlet weak var departamentLabel: UILabel!
    @IBOutlet weak var roomNumberLabel: UILabel!
    @IBOutlet weak var insuranceLabel: UILabel!
    @IBOutlet weak var bloodLabel: UILabel!
    @IBOutlet weak var emailAdressLabel: UILabel!
    @IBOutlet weak var phoneNumberLaber: UILabel!
    @IBOutlet weak var changePictureAction: UIButton!
    @IBOutlet weak var deletePictureAction: UIButton!
    @IBOutlet weak var addPictureAction: UIButton!
    @IBOutlet weak var logOutAction: UIButton!
    @IBOutlet var contentView: MyProfileView!
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        commonInit()
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        commonInit()
//    }
//    
//    private func commonInit(){
//        Bundle.main.loadNibNamed("MyProfileView", owner: self, options: nil)
//        addSubview(contentView)
//        contentView.frame = self.bounds
//        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
//    }
}
