//
//  ViewController.swift
//  DefaultMarginGuidesLab
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
        let redView = makeView()
        
        view.addSubview(redView)
        
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            redView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            redView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            redView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }

    func makeView() -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }
}

