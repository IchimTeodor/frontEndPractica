//
//  HospitalTableViewController.swift
//  PatientApp
//
//  Created by Practica on 8/29/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit


class HospitalTableViewController: UITableViewController  {
    
    weak var delegate: MedicalSelectionDelegate?
    var selectedIndex: IndexPath!
    
    enum HeadersEnum: String {
        case MedicalInfo = "Medical Info"
        case Appointments = "Appointments"
        case Results = "Results"
        case PersonalNotes = "Personal Notes"
        case HealthEvolution = "Health Evolution"
    }
    
    enum HeaderSections: Int {
        case MedicalInfo = 0
        case Appointments = 1
        case Results = 2
        case PersonalNotes = 3
        case HealthEvolution = 4
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadNibs()
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func loadNibs() {
        var nib = UINib.init(nibName: "HeaderTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "HeaderTableViewCell")
        
        nib = UINib.init(nibName: "MedicalInfoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MedicalInfoTableViewCell")
        
        nib = UINib.init(nibName: "AppointmentCollectionViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "AppointmentCollectionViewCell")
        nib = UINib.init(nibName: "PersonalNotesTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "PersonalNotesTableViewCell")
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case HeaderSections.MedicalInfo.rawValue:
            return 3
        case HeaderSections.Appointments.rawValue:
            return 1
        case HeaderSections.Results.rawValue:
            return 1
        case HeaderSections.PersonalNotes.rawValue:
            return 3
        case HeaderSections.HealthEvolution.rawValue:
            return 1
        default: return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "MedicalInfoTableViewCell") as! MedicalInfoTableViewCell
        let appointmentCell = tableView.dequeueReusableCell(withIdentifier: "AppointmentsTableViewCell") as! AppointmentsTableViewCell
        let resultsCell = tableView.dequeueReusableCell(withIdentifier: "ResultsTableViewCell") as! ResultsTableViewCell
        let personalNotesCell =  tableView.dequeueReusableCell(withIdentifier: "PersonalNotesTableViewCell") as! PersonalNotesTableViewCell
        
        
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                customCell.nameLabel.text = "Doctor 1"
                customCell.tag = 0
                return customCell
            case 1:
                customCell.nameLabel.text = "Doctor 2"
                return customCell
            case 2:
                customCell.nameLabel.text = "Doctor 3"
                return customCell
            default:
                customCell.textLabel?.text = "There are no doctors"
                return customCell
            }
        }else
            
            if indexPath.section == 1 {
                return appointmentCell
            }else
                
                if indexPath.section == 2 {
                    return resultsCell
                }else
                    if indexPath.section == 3{
                        switch indexPath.row {
                        case 0:
                            return personalNotesCell
                        case 1:
                            return personalNotesCell
                        case 2:
                            return personalNotesCell
                            
                        default:
                            personalNotesCell.personalNotesLabel.text = "No notes"
                            personalNotesCell.dateLabel.text = " "
                            return personalNotesCell
                        }
                        
                    } else
                        if indexPath.section == 4 {
                            customCell.nameLabel.text = "Description"
                            return customCell
                        }else{
                            customCell.nameLabel.text = "to be completed"
                            return customCell
        }
    }
    
    @objc func showButton(sender: UIButton){
        switch sender.tag {
        case 0:
            performSegue(withIdentifier: "ShowDoctorSplitView", sender: self)
        case 1:
            self.performSegue(withIdentifier: "AppointmentsShow", sender: nil)
        case 2:
            self.performSegue(withIdentifier: "ResultsShow", sender: nil)
        case 3:
            self.performSegue(withIdentifier: "PersonalNotesShow", sender: nil)
        case 4:
            self.performSegue(withIdentifier: "HealthEvolutionShow", sender: nil)
        default:
            performSegue(withIdentifier: "ShowDoctorSplitView", sender: self)
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = tableView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell") as! HeaderTableViewCell
        headerView.showButton.addTarget(self, action: #selector(showButton), for: .touchUpInside)
        switch section {
        case 0:
            headerView.titleLabel.text = localize(HeadersEnum.MedicalInfo.rawValue)
            headerView.showButton.tag = 0
        case 1:
            headerView.titleLabel.text = localize(HeadersEnum.Appointments.rawValue)
            headerView.showButton.tag = 1
        case 2:
            headerView.titleLabel.text = localize(HeadersEnum.Results.rawValue)
            headerView.showButton.tag = 2
        case 3:
            headerView.titleLabel.text = localize(HeadersEnum.PersonalNotes.rawValue)
            headerView.showButton.tag = 3
            
        case 4:
            headerView.titleLabel.text = localize(HeadersEnum.HealthEvolution.rawValue)
            headerView.showButton.tag = 4
        default:
            break
        }
        headerView.backgroundColor = BackgroundSecondaryColor
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return TableHeaderHeight
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return UITableViewAutomaticDimension
        }
        if indexPath.section == 1 {
            return 135
        }
        if indexPath.section == 2 {
            return 135
        }
        if indexPath.section == 3 {
            return 100
        }
        
        return UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        if indexPath.section == 0{
            performSegue(withIdentifier: "ShowDoctorSplitView", sender: self)
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDoctorSplitView" {
            let destinationVC = segue.destination as! SplitContainerViewController
            selectedIndex = tableView.indexPathForSelectedRow
            destinationVC.index = selectedIndex
        }
    }
    
}



