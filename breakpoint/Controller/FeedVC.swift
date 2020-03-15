//
//  FirstViewController.swift
//  breakpoint
//
//  Created by Yunus Emre ARSLAN on 12.03.2020.
//  Copyright © 2020 Yunus Emre ARSLAN. All rights reserved.
//

import UIKit

class FeedVC: UIViewController {
    
   @IBOutlet var tableView: UITableView!
    
    var messageArray = [Message]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DataService.instance.getAllFeedMessages { (returnedMessagesArray) in
            self.messageArray = returnedMessagesArray
            self.tableView.reloadData()
        }
    }

}
extension FeedVC:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "feedCell") as? FeedCell
            else { return UITableViewCell()
                }
                let image = UIImage(named: "defaultProfileImage")
                let message = messageArray[indexPath.row]
        cell.configureCell(profileImage: image!, email: message.senderId, content: message.content)
        return cell
    }
    
}

