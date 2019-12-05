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

    var expandedCells:Array<Bool> = {
        var array = Array<Bool>()

        for item in getMyFriends() {
            array.append(false)
        }

        return array
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(StoryCell.self, forCellWithReuseIdentifier: "storyCell")
    }
}

extension StoryCollectionView:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        expandedCells[indexPath.item] = !expandedCells[indexPath.item]
        collectionView.reloadData()
    }
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

extension StoryCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        if !expandedCells[indexPath.item] {
            return CGSize(width: 50, height: collectionView.frame.height-20)
        } else {
            return CGSize(width: 70, height: collectionView.frame.height)
        }
    }
}
