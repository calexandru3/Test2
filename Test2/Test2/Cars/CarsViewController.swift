//
//  CarsViewController.swift
//  Test2
//
//  Created by Bogdan Marica on 03/12/2019.
//  Copyright © 2019 Florin Precup. All rights reserved.
//

import UIKit

class CarsViewController: UIViewController {

    @IBOutlet weak var tabButtons: UISegmentedControl!

    var firstCv = FirstViewController()
    var secondCv = SecondViewcontroller()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    fileprivate func setUp(){
        addChild(firstCv)
        addChild(secondCv)

        self.view.addSubview(firstCv.view)
        self.view.addSubview(secondCv.view)

        firstCv.view.translatesAutoresizingMaskIntoConstraints = false
        secondCv.view.translatesAutoresizingMaskIntoConstraints = false

        firstCv.view.topAnchor.constraint(equalTo: self.tabButtons.bottomAnchor, constant: 10).isActive = true
        firstCv.view.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        firstCv.view.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        firstCv.view.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 10).isActive = true

        secondCv.view.topAnchor.constraint(equalTo: self.tabButtons.bottomAnchor, constant: 10).isActive = true
        secondCv.view.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        secondCv.view.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        secondCv.view.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 10).isActive = true

        secondCv.view.isHidden = true
        secondCv.view.isUserInteractionEnabled = false
    }

    @IBAction func buttonClicked(_ sender: Any) {
        switch tabButtons.selectedSegmentIndex {
        case 0:
            firstCv.view.isUserInteractionEnabled = true
            firstCv.view.isHidden = false
            secondCv.view.isUserInteractionEnabled = false
            secondCv.view.isHidden = true
            break
        case 1:
            secondCv.view.isUserInteractionEnabled = true
            secondCv.view.isHidden = false
            firstCv.view.isUserInteractionEnabled = false
            firstCv.view.isHidden = true
            break
        default:
            break
        }
    }
}
