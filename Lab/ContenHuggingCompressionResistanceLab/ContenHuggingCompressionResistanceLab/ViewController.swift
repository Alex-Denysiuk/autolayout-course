//
//  ViewController.swift
//  ContenHuggingCompressionResistanceLab
//
//  Created by Dev on 04.01.2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
    }
    
    func setupViews() {
        let label1 = makeLabel(withText: "Label1")
        let textView1 = makeTextField(withPlaceholder: "TextView1")
         
        
        view.addSubview(label1)
        view.addSubview(textView1)
        
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            label1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            
            textView1.leadingAnchor.constraint(equalTo: label1.trailingAnchor, constant: 8),
            textView1.firstBaselineAnchor.constraint(equalTo: label1.firstBaselineAnchor),
            textView1.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
        ])
        
        // CHCR
        label1.setContentHuggingPriority(UILayoutPriority.init(251), for: .horizontal)
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
    
    func makeTextField(withPlaceholder text: String) -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = text
        textField.backgroundColor = .yellow
        return textField
    }
}

