//
//  TableViewController.swift
//  swift-pageMenu-demo
//
//  Created by nswbmw on 16/4/2.
//  Copyright © 2016年 nswbmw. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "topicCell")! as UITableViewCell
        
        let avatar = cell.viewWithTag(1) as! UIImageView
        let title = cell.viewWithTag(2) as! UILabel
        let subtitle = cell.viewWithTag(3) as! UILabel
        
        avatar.image = UIImage(named: "avatar.png")
        title.text = "This is title"
        subtitle.text = "置顶 • nswbmw • 12分钟前"
        
        return cell
    }

}
