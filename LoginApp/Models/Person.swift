//
//  Person.swift
//  LoginApp
//
//  Created by Ilia D on 04.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let age: Int
    let info: String

    var fullName: String {
        "\(name) \(surname)"
    }
}
