//
//  RowView.swift
//  CustomViewChallenge
//
//  Created by Dev on 06.01.2025.
//  Copyright © 2025 Rasmusson Software Consulting. All rights reserved.
//


import UIKit

class RowView: UIView {
       
    public var isOn: Bool = false
    public var title: String = ""

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title: String = "", isOn: Bool = false) {
        self.title = title
        self.isOn = isOn
 
        super.init(frame: .zero)
        setupViews()
    }

    func setupViews() {
        let titleLabel = makeLabel(withText: self.title)
        let onOffSwith = makeSwitch(isOn: self.isOn)

        addSubview(titleLabel)
        addSubview(onOffSwith)

        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        onOffSwith.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        onOffSwith.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
    }

    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
    }
    
}
