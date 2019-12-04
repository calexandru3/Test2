//
//  OnlineFirendsCollectionView.swift
//  Test2
//
//  Created by Bogdan Marica on 04/12/2019.
//  Copyright © 2019 Florin Precup. All rights reserved.
//

import UIKit

class OnlineFirendsCollectionView: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(OnlineFirendsCell.self, forCellWithReuseIdentifier: "onlineFirendsCell")
    }
}

extension OnlineFirendsCollectionView:UICollectionViewDelegate {

}

extension OnlineFirendsCollectionView:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return getMyFriends().count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "onlineFirendsCell", for: indexPath) as! OnlineFirendsCell
        cell.profileModel = getMyFriends()[indexPath.item]
        return cell
    }
}
