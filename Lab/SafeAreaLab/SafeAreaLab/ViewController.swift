//
//  ViewController.swift
//  SafeAreaLab
//
//  Created by Dev on 03.01.2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
    }

    func setupViews() {
        let topLabel = makeLabel(withText: "Top")
        let bottomLabel = makeLabel(withText: "Bottom")
        
        let leadingLabel = makeLabel(withText: "Leading")
        let trailingLabel = makeLabel(withText: "Trailing")
        
        view.addSubview(topLabel)
        view.addSubview(bottomLabel)
        view.addSubview(leadingLabel)
        view.addSubview(trailingLabel)
        
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            leadingLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            leadingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            trailingLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            trailingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.font = .systemFont(ofSize: 32)
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }
}

