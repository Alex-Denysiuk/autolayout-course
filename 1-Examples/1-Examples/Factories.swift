//
//  Factories.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-06.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

// MARK: - Labels

func makeLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false // important!
    label.backgroundColor = .yellow
    label.textAlignment = .center
    label.numberOfLines = 0
    label.text = text

    return label
}

func makeLabel(withText text: String, size: CGFloat) -> UILabel {
    let label = makeLabel(withText: text)
    label.font = UIFont.systemFont(ofSize: size)

    return label
}

func makeSecondaryLabel(withText text: String) -> UILabel {
    let label = makeLabel(withText: text, size: 12)
    label.textColor = .gray

    return label
}

// MARK: - Buttons

func makeButton(withText text: String) -> UIButton {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle(text, for: .normal)
    button.titleLabel?.adjustsFontSizeToFitWidth = true
    button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
    button.backgroundColor = .blue

    return button
}

func makeButton(withText text: String, color: UIColor) -> UIButton {
    let button = makeButton(withText: text)
    button.backgroundColor = color

    return button
}

// MKAR: - Misc

func makeView() -> UIView {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .red

    return view
}

extension UIColor {
    static let darkBlue = UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 1)
    static let darkGreen = UIColor(red: 48/255, green: 209/255, blue: 88/255, alpha: 1)
}