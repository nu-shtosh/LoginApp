//
//  AboutPersonViewController.swift
//  LoginApp
//
//  Created by Ilia D on 04.10.2022.
//

import UIKit

class AboutPersonViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var personInfoLabel: UILabel!


    // MARK: - Properties
    var personInfoValue: User!

    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(personInfoValue.person.fullName) Bio"
        setGradientBackground()
        personInfoLabel.text = "\(personInfoValue.person.info)"
    }

}
