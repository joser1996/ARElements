//
//  HomeController.swift
//  ElementsAR
//
//  Created by Jose Torres-Vargas on 8/12/21.
//

import UIKit

class HomeController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    func setupView() {
        view.addSubview(titleLabel)

        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            titleLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 10),
            titleLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 50)
        ])
    }
}
