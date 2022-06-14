//
//  ModuleBuilder.swift
//  Architecture-MVP-1
//
//  Created by Ruslan on 07.02.2022.
//

import Foundation
import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModuleBuilder: Builder {
    
    static func createMainModule() -> UIViewController {
        
        // MVP dependency injections
        let model = Person(firstName: "Richard", secondName: "Green")
        let view = MainViewController()
        let presenter = MainPresenter(person: model, view: view)
        
        view.presenter = presenter
        return view
    }
}
