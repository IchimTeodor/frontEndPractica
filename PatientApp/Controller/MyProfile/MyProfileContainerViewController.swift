//
//  MyProfileViewController.swift
//  PatientApp
//
//  Created by Practica on 9/11/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit

protocol LogOutDelegate: class {
    func logOut()
}

class MyProfileContainerViewController: UIViewController {
    
    @IBOutlet weak var viewContainer: UIView!
    
    var profileView: MyProfileView!
    var notesView: AddPersonalNotes!
    var myProfileViewModel = MyProfileViewModel()
    var addPersonalNotesModel = PatientNoteForAddModel()
    var addPersonalNotes: AddPersonalNotes!
    
    @IBOutlet weak var segmentedButton: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        segmentedButton.selectedSegmentIndex = 0
        
        switch  segmentedButton.selectedSegmentIndex {
        case 0:
            showMyProfile()
        case 1:
            showAddPersonalNotes()
            break
        default:
            print("none")
        }

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    func showAddNotes() {
        notesView = AddPersonalNotes.init(frame: self.viewContainer.bounds, model: addPersonalNotesModel)
        notesView = notesView.customView(model: addPersonalNotesModel, frame: viewContainer.bounds) as! AddPersonalNotes
        viewContainer.addSubview(notesView)
    }
    
    func showMyProfile() {
//        myProfileViewModel.getMyProfile()
//        myProfileViewModel.onMyProfileFinished = { [unowned self] () -> Void in
//            self.profileView = MyProfileView.init(frame: self.viewContainer.bounds, model: self.myProfileViewModel)
//            self.profileView = self.profileView.customView(model: self.myProfileViewModel, frame: self.viewContainer.bounds) as! MyProfileView
//            self.viewContainer.addSubview(self.profileView)
//            self.profileView.backgroundColor = BackgroundSecondaryColor
//            self.profileView.onLogOutAction = { [unowned self] () -> Void in
//                self.performSegue(withIdentifier: "LogOutShow", sender: nil)
//            }
//            self.profileView.startChangePictureAction = { [unowned self] (imagePicker) -> Void in
//                self.present(imagePicker, animated: true, completion: nil)
//            }
//            self.profileView.onChangePictureActionFinished = { [unowned self] () -> Void in
//                self.dismiss(animated: true, completion: { () -> Void in
//
//                })
//            }
//            self.profileView.onEditAction = { [unowned self] (user) -> Void in
//                let emergencyContact = EmergencyContactModel()
//                emergencyContact.setName(name: self.myProfileViewModel.getEmergencyContactName())
//                emergencyContact.setPhone(phone: self.myProfileViewModel.getEmergencyContactNumber())
//                emergencyContact.setEmail(email: self.myProfileViewModel.getEmergencyContactEmail())
//                user.addEmergencyContact(contact: emergencyContact)
//                self.myProfileViewModel.putMyEditableProfile(user: user)
//                self.myProfileViewModel.onMyProfileFinished = { [unowned self] () -> Void in
//                    self.profileView.loadContent()
//                }
//            }
//        }
        let customStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let myProfile = customStoryboard.instantiateViewController(withIdentifier: "MyProfileViewController") as! MyProfileViewController
        addChild(myProfile)
    }
    
    func showAddPersonalNotes() {
        self.viewContainer.addSubview(addPersonalNotes)
    }
    
    @IBAction func segmentAction(_ sender: AnyObject) {
        switch  segmentedButton.selectedSegmentIndex {
        case 0:
            showMyProfile()
        case 1:
            showAddNotes()
            break
        default:
            print("none")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LogOutShow" {
            EncounterID.shared.id = 0
        }
    }
}
extension MyProfileContainerViewController
{
    func addChild(_ child: UIViewController) {
        addChildViewController(child)
        view.addSubview(child.view)
        child.didMove(toParentViewController: self)
    }
    func removeChild() {
        guard parent != nil else {
            return
        }
        willMove(toParentViewController: nil)
        removeFromParentViewController()
        view.removeFromSuperview()
    }
}
