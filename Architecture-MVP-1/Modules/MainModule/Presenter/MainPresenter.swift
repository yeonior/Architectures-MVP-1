//
//  MainPresenter.swift
//  Architecture-MVP-1
//
//  Created by Ruslan on 07.02.2022.
//

import Foundation

protocol MainViewProtocol: AnyObject {
    func setGreeting(greeting: String)
}

protocol MainPresenterProtocol: AnyObject {
    init(person: Person, view: MainViewProtocol)
    func showGreeting()
}

class MainPresenter: MainPresenterProtocol {
    
    // presenter includes model and view
    let person: Person
    weak var view: MainViewProtocol?
    
    required init(person: Person, view: MainViewProtocol) {
        self.person = person
        self.view = view
    }
    
    func showGreeting() {
        let greeting = person.firstName + " " + person.secondName
        view?.setGreeting(greeting: greeting)
    }
}
