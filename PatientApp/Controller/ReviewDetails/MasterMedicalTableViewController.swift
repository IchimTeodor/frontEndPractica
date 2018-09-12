//
//  DoctorsTableViewController.swift
//  PatientApp
//
//  Created by Practica on 9/4/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

protocol MedicalSelectionDelegate: class {
    func staffSelected(name: String)
}

class MasterMedicalTableViewController: UITableViewController {
    
    weak var delegate: MedicalSelectionDelegate?
    var index: IndexPath!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        loadNibs()
        if index != nil {
            didSelectRow(indexPath: index)
        } else {
            didSelectRow(indexPath: IndexPath(row: 0, section: 0))
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func loadNibs(){
        var nib = UINib.init(nibName: "DoctorHeaderTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DoctorHeaderTableViewCell")
        
        nib = UINib.init(nibName: "MedicalInfoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MedicalInfoTableViewCell")
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableCell(withIdentifier: "DoctorHeaderTableViewCell") as! DoctorHeaderTableViewCell
        switch section {
        case 0:
            headerView.titleLabelDoctors.text = "Doctors"
        case 1:
            headerView.titleLabelDoctors.text = "Nurses"
        default:
            headerView.titleLabelDoctors.text = "Nothing"
        }
        return headerView

    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let customCell = tableView.dequeueReusableCell(withIdentifier: "MedicalInfoTableViewCell") as! MedicalInfoTableViewCell

        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                customCell.nameLabel.text = "Doctor I"
            case 1:
                customCell.nameLabel.text = "Doctor II"
            case 2:
                customCell.nameLabel.text = "Doctor III"
            default:
                customCell.nameLabel.text = "No other doctor!"
            }
        }
        
        if indexPath.section == 1 {
            switch indexPath.row {
            case 0:
                customCell.nameLabel.text = "Nurse I"
            case 1:
                customCell.nameLabel.text = "Nurse II"
            case 2:
                customCell.nameLabel.text = "Nurse III"
            default:
                customCell.nameLabel.text = "No other nurse!"
            }
        }
        
        return customCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        if indexPath.row == 0 {
            delegate?.staffSelected(name: "Gigica")
        }
        
        if indexPath.row == 1 {
            delegate?.staffSelected(name: "Ionel")
        }
        
        if indexPath.row == 2 {
            delegate?.staffSelected(name: "Marcel")
        }
    }
    
    func initIndex(indexPath: IndexPath){
        index = indexPath
    }
    
    func didSelectRow(indexPath: IndexPath){
        tableView.selectRow(at: indexPath, animated: true, scrollPosition: .bottom)
        tableView.delegate?.tableView!(tableView, didSelectRowAt: indexPath)
    }

}
