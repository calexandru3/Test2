//
//  SecondViewcontroller.swift
//  Test2
//
//  Created by Bogdan Marica on 04/12/2019.
//  Copyright © 2019 Florin Precup. All rights reserved.
//

import UIKit

class SecondViewcontroller: UIViewController, UICollectionViewDelegateFlowLayout {

    let collectionView: UICollectionView = {
        let layout = UltravisualLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)

        return cv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectiobView()
        collectionView.backgroundColor = .white
        collectionView.register(CarCell.self, forCellWithReuseIdentifier: "carCell")
    }

    fileprivate func setUpCollectiobView(){
        self.view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self

        collectionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
}
extension SecondViewcontroller:UICollectionViewDelegate{

}

extension SecondViewcontroller: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return getCars().count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "carCell", for: indexPath) as! CarCell
        cell.carModel = getCars()[indexPath.item]
        return cell
    }


}
