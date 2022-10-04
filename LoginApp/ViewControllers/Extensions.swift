//
//  Extensions.swift
//  LoginApp
//
//  Created by Илья Дубенский on 04.10.2022.
//

import UIKit

// MARK: - Gradient view
extension UIViewController {
    func setGradientBackground() {
        let colorTop = UIColor(
            red: 155.0/255.0,
            green: 155.0/255.0,
            blue: 155.0/255.0,
            alpha: 1.0
        ).cgColor
        let colorBottom = UIColor(
            red: 25.0/255.0,
            green: 25.0/255.0,
            blue: 25.0/255.0,
            alpha: 1.0
        ).cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = view.bounds

        view.layer.insertSublayer(gradientLayer, at:0)
    }
}
