//
//  MainPresenter.swift
//  MVP-Storyboard
//
//  Created by Ruslan on 07.02.2022.
//

import Foundation

protocol MainViewProtocol: AnyObject {
    func setGreeting(greeting: String)
}

protocol MainPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, person: Person)
    func showGreeting()
}

class MainPresenter: MainPresenterProtocol {
    
    let view: MainViewProtocol
    let person: Person
    
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = person.firstName + " " + person.secondName
        view.setGreeting(greeting: greeting)
    }
}
