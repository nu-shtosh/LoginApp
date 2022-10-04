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
    private let admin = User.getUser()


    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.receivedUser = admin.username
            } else if let navigationVC = viewController as? UINavigationController {
                guard let personVC = navigationVC.topViewController as? PersonViewController
                    else { return }
                personVC.receivedUser = admin
            }
        }
    }
        // MARK: - IBActions
        @IBAction func LogInButtonDidTapped() {
            guard UserNameTF.text == admin.username,
                  PasswordTF.text == admin.password
            else {
                showAlert(
                    with: "Oops!",
                    andMessage: "Wrong password or username!",
                    textField: PasswordTF
                )
                return
            }

            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }

        @IBAction func unwind(for segue: UIStoryboardSegue, sender: Any?) {
            UserNameTF.text = nil
            PasswordTF.text = nil
        }

        @IBAction func helpButtonDidTapped(_ sender: UIButton) {
            sender.tag == 0
            ? showAlert(
                with: "Oops!",
                andMessage: "Your name is \(admin.username) 🤖"        )
            : showAlert(
                with: "Oops!",
                andMessage: "Your password is \(admin.password) 🔑"
            )
        }
    }

    // MARK: - UIAlertController
    extension LoginViewController {
        private func showAlert(
            with title: String,
            andMessage message: String,
            textField: UITextField? = nil
        ) {
            let alert = UIAlertController(
                title: title,
                message: message,
                preferredStyle: .alert
            )
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                textField?.text = nil
            }
            alert.addAction(okAction)
            present(alert, animated: true)
        }
    }

// MARK: - Hide Keyboard
extension LoginViewController {
    open override func touchesBegan(
        _ touches: Set<UITouch>,
        with event: UIEvent?
    ) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
