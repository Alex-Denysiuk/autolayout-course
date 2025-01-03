//
//  ViewController.swift
//  AnchorsLab
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

    private func setupViews() {
        let upperLeftLabel = makeLabel(withText: "Upper Left")
        let upperRightLabel = makeLabel(withText: "Upper Right")
        let middleView = makeView()
        
        let smallLabel = makeLabel(withText: "small", ofSize: 12)
        let largeLabel = makeLabel(withText: "large", ofSize: 32)
        
        let bottomLeftLabel = makeSecondaryLabel(withText: "Bottom Left")
        let bottomRightButton = makeButton(withText: "Bottom Right")
        
        [upperLeftLabel, upperRightLabel, middleView,
         smallLabel,
         largeLabel,
         bottomLeftLabel, bottomRightButton].forEach { view.addSubview($0) }
        
        NSLayoutConstraint.activate([
            upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            upperLeftLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            upperRightLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            
            
            // Option 1: Size explicitly
//            middleView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            middleView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            middleView.heightAnchor.constraint(equalToConstant: 50),
//            middleView.widthAnchor.constraint(equalToConstant: 100),
            
            // Option 2: Size dynamicly (pinnig)
            // width
            middleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            middleView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            // height
            middleView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            middleView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            
            smallLabel.topAnchor.constraint(equalTo: middleView.bottomAnchor, constant: 8),
            smallLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            
//            largeLabel.topAnchor.constraint(equalTo: smallLabel.topAnchor),
//            largeLabel.centerYAnchor.constraint(equalTo: smallLabel.firstBaselineAnchor),
            largeLabel.firstBaselineAnchor.constraint(equalTo: smallLabel.firstBaselineAnchor),
            largeLabel.leadingAnchor.constraint(equalTo: smallLabel.trailingAnchor, constant: 8),
            
            bottomLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8),
            bottomLeftLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            
            bottomRightButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8),
            bottomRightButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            
        ])
    }
    
    func makeLabel(withText text: String) -> UILabel {
        return makeLabel(withText: text, ofSize: 20)
    }
    
    func makeLabel(withText text: String, ofSize fontSize: CGFloat) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.font = .systemFont(ofSize: fontSize)
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }
    
    func makeSecondaryLabel(withText text: String) -> UILabel {
        return makeLabel(withText: text, ofSize: 12)
    }
    
    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .blue
        return button
    }
    
    func makeView() -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }
}
