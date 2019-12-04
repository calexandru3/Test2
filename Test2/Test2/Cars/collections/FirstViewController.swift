//
//  FirstViewController.swift
//  Test2
//
//  Created by Bogdan Marica on 04/12/2019.
//  Copyright © 2019 Florin Precup. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)

        return cv
    }()

    var expandedCellIdentifier = "carCell"

    var cellWidth:CGFloat{
        return collectionView.frame.size.width
    }
     var expandedHeight : CGFloat = 100
     var notExpandedHeight : CGFloat = 50

     var dataSource = getCars()
     var isExpanded = [Bool]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectiobView()
        isExpanded = Array(repeating: false, count: dataSource.count)
        self.view.backgroundColor = .white
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

        collectionView.register(CarCell.self, forCellWithReuseIdentifier: "carCell")
    }
}

extension FirstViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: expandedCellIdentifier, for: indexPath) as! CarCell
        cell.indexPath = indexPath
        cell.carModel = dataSource[indexPath.item]
        return cell

    }
}

extension FirstViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        if isExpanded[indexPath.row] == true{
             return CGSize(width: cellWidth, height: expandedHeight)
        }else{
            return CGSize(width: cellWidth, height: notExpandedHeight)
        }

    }

}

extension FirstViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        isExpanded[indexPath.row] = !isExpanded[indexPath.row]
        UIView.animate(withDuration: 0.8, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.9, options: UIView.AnimationOptions.curveEaseInOut, animations: {
              self.collectionView.reloadItems(at: [indexPath])
            }, completion: { success in
                print("success")
        })

    }
}
