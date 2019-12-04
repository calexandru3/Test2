//
//  DetailsTableView.swift
//  Test2
//
//  Created by Bogdan Marica on 04/12/2019.
//  Copyright © 2019 Florin Precup. All rights reserved.
//

import UIKit

class DetailsTableView: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        registerCells()
    }

    fileprivate func registerCells(){
        self.tableView.register(UINib(nibName: "DetailsCustomCell", bundle: nil), forCellReuseIdentifier: "detailsCustomCell")
    }
}
extension DetailsTableView:UITableViewDelegate {

}

extension DetailsTableView:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getMyFriends().count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailsCustomCell", for: indexPath) as! DetailsCustomCell
        cell.profileModel = getMyFriends()[indexPath.item]
        return cell
    }


}
