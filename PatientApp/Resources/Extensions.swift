//
//  ActivityIndicatorCategory.swift
//  PatientApp
//
//  Created by Practica on 10/1/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
     func showActivityIndicator(view: UIView, indicator: UIActivityIndicatorView) {
        indicator.frame = view.frame
        indicator.activityIndicatorViewStyle = .white
        indicator.backgroundColor = UIColor.darkGray
        indicator.center = view.center
        indicator.layer.cornerRadius = 05
        indicator.hidesWhenStopped = true
        indicator.layer.zPosition = 1
        indicator.isOpaque = false
        indicator.tag = 999
        indicator.alpha = 0.5
        indicator.clipsToBounds = true
        view.addSubview(indicator)
        indicator.startAnimating()
    }
    
    func hideActivityIndicator(view: UIView, indicator: UIActivityIndicatorView){
        indicator.stopAnimating()
    }
}
