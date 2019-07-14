//
//  ViewController.swift
//  AnchorsLayoutGuides
//
//  Created by Jonathan Rasmusson Work Pro on 2019-07-13.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

struct Lab {
    let name: String
    let viewController: UIViewController
}

class ViewController: UITableViewController {
    
    let labs = [
        Lab(name: "Basic Anchors", viewController: BasicAnchors()),
        Lab(name: "Safe Area Guide", viewController: SafeAreaGuide()),
        Lab(name: "Layout Margins", viewController: LayoutMargin()),
        Lab(name: "Spacer Views", viewController: SpacerViews()),
        Lab(name: "Readable Content Guide", viewController: ReadableContentGuide())
    ]

    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "Anchors"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel?.text = labs[indexPath.row].name
        
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labs.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(labs[indexPath.row].viewController, animated: false)
    }
}
