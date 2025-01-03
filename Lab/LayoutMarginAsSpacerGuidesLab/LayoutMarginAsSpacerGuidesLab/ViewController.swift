//
//  ViewController.swift
//  LayoutMarginAsSpacerGuidesLab
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
        let leadingGuide = UILayoutGuide()
        let cancelButton = makeButton(withText: "Cancel", color: UIColor.darkGreen)
        let middleGuide = UILayoutGuide()
        let okButton = makeButton(withText: "OK", color: UIColor.darkBlue)
        let trailingGuide = UILayoutGuide()
        
        view.addLayoutGuide(leadingGuide)
        view.addSubview(cancelButton)
        view.addLayoutGuide(middleGuide)
        view.addSubview(okButton)
        view.addLayoutGuide(trailingGuide)
        
        let margins = view.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            margins.leadingAnchor.constraint(equalTo: leadingGuide.leadingAnchor),
            leadingGuide.trailingAnchor.constraint(equalTo: okButton.leadingAnchor),
            
            okButton.trailingAnchor.constraint(equalTo: middleGuide.leadingAnchor),
            middleGuide.trailingAnchor.constraint(equalTo: cancelButton.leadingAnchor),
            
            cancelButton.trailingAnchor.constraint(equalTo: trailingGuide.leadingAnchor),
            trailingGuide.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            
            okButton.widthAnchor.constraint(equalTo: cancelButton.widthAnchor),
            
            leadingGuide.widthAnchor.constraint(equalTo: middleGuide.widthAnchor),
            leadingGuide.widthAnchor.constraint(equalTo: trailingGuide.widthAnchor),
            
            leadingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            middleGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            trailingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            okButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cancelButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            leadingGuide.heightAnchor.constraint(equalToConstant: 1),
            middleGuide.heightAnchor.constraint(equalToConstant: 1),
            trailingGuide.heightAnchor.constraint(equalToConstant: 1)
        ])
        
    }
    
    func makeButton(withText text: String, color: UIColor) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.setTitleColor(.white, for: .normal)
        button.configuration = .plain()
        button.configuration?.contentInsets = NSDirectionalEdgeInsets.init(top: 8, leading: 16, bottom: 8, trailing: 16)
        button.backgroundColor = color
        return button
    }
}

extension UIColor {
    
    static let darkBlue = UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 1)
    static let darkGreen = UIColor(red: 48/255, green: 209/255, blue: 88/255, alpha: 1)
}
