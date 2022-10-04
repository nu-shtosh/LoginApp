//
//  PersonViewController.swift
//  LoginApp
//
//  Created by Ilia D on 04.10.2022.
//

import UIKit

class PersonViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var personNameLabel: UILabel!
    @IBOutlet var personSurnameLabel: UILabel!
    @IBOutlet var personAgeLabel: UILabel!

    // MARK: - Properties
    var receivedUser: User!


    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        title = receivedUser.person.fullName
        personNameLabel.text = "\(receivedUser.person.name)"
        personSurnameLabel.text = "\(receivedUser.person.surname)"
        personAgeLabel.text = "\(receivedUser.person.age)"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutPerson = segue.destination as? AboutPersonViewController else { return }
        aboutPerson.personInfoValue = receivedUser
    }
    
}
