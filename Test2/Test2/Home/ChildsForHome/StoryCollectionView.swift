//
//  StoryCollectionView.swift
//  Test2
//
//  Created by Bogdan Marica on 04/12/2019.
//  Copyright © 2019 Florin Precup. All rights reserved.
//

import UIKit

class StoryCollectionView: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    var selectedIndexPath: IndexPath?

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(StoryCell.self, forCellWithReuseIdentifier: "storyCell")
    }
}

extension StoryCollectionView:UICollectionViewDelegate{

}

extension StoryCollectionView:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return getMyFriends().count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "storyCell", for: indexPath) as! StoryCell
        cell.profileModel = getMyFriends()[indexPath.item]

        return cell
    }
}
