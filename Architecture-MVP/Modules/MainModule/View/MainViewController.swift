//
//  MainViewController.swift
//  Architecture-MVP
//
//  Created by Ruslan on 07.02.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var greetingLabel: UILabel!
    
    var presenter: MainPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - IBActions
    @IBAction func buttonDidTapped(_ sender: UIButton) {
        presenter.showGreeting()
    }
}

extension MainViewController: MainViewProtocol {
    
    func setGreeting(greeting: String) {
        greetingLabel.text = greeting
    }
}

