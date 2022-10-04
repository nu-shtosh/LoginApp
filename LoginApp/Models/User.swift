//
//  User.swift
//  LoginApp
//
//  Created by Ilia D on 04.10.2022.
//

// MARK: - User Class
struct User {

    // MARK: - Properties
    let username: String
    let password: String
    let person: Person

    static func getUser() -> User {
        User(
            username: "admin",
            password: "admin",
            person: Person(
                name: "Ilia",
                surname: "D",
                age: 30,
                info: "Я родился в г.Сызрань Самарской области. В 20 лет переехал в Москву и работал бортпроводником в течение 8 лет. Я успел посетить много интересных мест, таких как Индия, США, Мексика, Таиланд, несколько Европейских стран и десятки городов России. В 2020 году началась пандемия, и я задумался о смене профессии. Сначала мой выбор пал на Питон, но мне хватало творческой деятельности в разработке. Год спустя я вспомнил, что мне всегда хотелось сделать приложение, которым будут пользоваться все и я начал изучать Свифт, теперь мне творчества предостаточно!)"
            )
        )
    }
}
