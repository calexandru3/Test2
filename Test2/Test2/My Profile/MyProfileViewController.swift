//
//  MyProfileViewController.swift
//  Test2
//
//  Created by Bogdan Marica on 03/12/2019.
//  Copyright © 2019 Florin Precup. All rights reserved.
//

import UIKit

class MyProfileViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let headers = ["My Profile","My Photos","Best Friends"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        registerCells()
    }

    fileprivate func registerCells(){
        self.tableView.register(MyProfileCell.self, forCellReuseIdentifier: "myProfile")
    }
}
extension MyProfileViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        headers[section]
    }
}

extension MyProfileViewController:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return headers.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return getMyProfile().count
        case 1:
            return getCars().count
        case 2:
            return getMyFriends().count
        default:
            return 0
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "myProfile") as! MyProfileCell
            cell.profilemModel = getMyProfile()[0]

            return cell
        case 1:
            let cell = UITableViewCell()
            cell.selectionStyle = .none
            cell.imageView?.image = getCars()[indexPath.item].image
            cell.textLabel?.text = getCars()[indexPath.item].description

            return cell
        case 2:
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "myProfile") as! MyProfileCell
            cell.profilemModel = getMyFriends()[indexPath.item]

            return cell
        default:
            return UITableViewCell()
        }
    }
}
