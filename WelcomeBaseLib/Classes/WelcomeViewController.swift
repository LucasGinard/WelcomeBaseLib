//
//  WelcomeViewController.swift
//  WelcomeBaseLib
//
//  Created by Lucas Ginard on 2023-11-07.
//

import UIKit

public class WelcomeViewController: UIViewController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

        let welcomeLabel = UILabel()
        welcomeLabel.text = "Bienvenido a mi lib"
        welcomeLabel.font = UIFont.systemFont(ofSize: 24)
        welcomeLabel.textAlignment = .center
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(welcomeLabel)

        NSLayoutConstraint.activate([
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20)
        ])

        let helloButton = UIButton(type: .system)
        helloButton.setTitle("Hola", for: .normal)
        helloButton.addTarget(self, action: #selector(sayHello), for: .touchUpInside)
        helloButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(helloButton)

        NSLayoutConstraint.activate([
            helloButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 20)
        ])
    }

    @objc func sayHello() {
        print("Hola")
    }
}
