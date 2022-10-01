//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Ilia D on 30.09.2022.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var UserNameTF: UITextField!
    @IBOutlet var PasswordTF: UITextField!

    // MARK: - Privet Properties
    private let admin = User(username: "admin", password: "admin")

    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController
        else {
            return
        }
        welcomeVC.receivedUser = UserNameTF.text
    }

    // MARK: - IBActions
    @IBAction func LogInButtonDidTapped() {
        guard UserNameTF.text == admin.username,
              PasswordTF.text == admin.password
        else {
            showAlert(
                with: "Oops!",
                andMessage: "Wrong password or username!"
            )
            return
        }
    }

    @IBAction func unwind(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.source is WelcomeViewController else { return }
        UserNameTF.text = nil
        PasswordTF.text = nil
        dismiss(animated: true)
    }


    @IBAction func helpButtonDidTapped(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            showAlert(
                with: "Oops!",
                andMessage: "Your name is \(admin.username) 🤖"
            )
            return
        case 1:
            showAlert(
                with: "Oops!",
                andMessage: "Your password is \(admin.password) 🔑"
            )
            return
        default:
            return
        }
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(
        with title: String,
        andMessage message: String
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.PasswordTF.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - Hide Keyboard
extension LoginViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

// MARK: - User Class
class User {


    // MARK: - Properties
    let username: String
    let password: String

    // MARK: - Initializators
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}
