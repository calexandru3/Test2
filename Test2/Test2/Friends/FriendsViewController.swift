//
//  FriendsViewController.swift
//  Test2
//
//  Created by Bogdan Marica on 03/12/2019.
//  Copyright © 2019 Florin Precup. All rights reserved.
//

import UIKit
class FriendsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

extension FriendsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getMyFriends().count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendsCell", for: indexPath) as! FirendsCell
        cell.profilemModel = getMyFriends()[indexPath.item]
        return cell
    }


}

extension FriendsViewController: UITableViewDelegate {

}
