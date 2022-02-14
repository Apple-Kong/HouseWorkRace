//
//  MatchesViewController.swift
//  Tinderbar
//
//  Created by Merrick Sapsford on 22/10/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    let taskViewModel = TaskViewModel()
    

    
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBAction func changeGroup(_ sender: UITapGestureRecognizer) {
        
        //그룹 변경 메서드 호출 예정
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as! HomeTableViewCell
        
        let item = taskViewModel.taskList()[indexPath.row]
        
        
        cell.titleLabel.text = item.title
        
        
        return cell
    }
}

@IBDesignable class HomeActionButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = MainColors.unselectedGray
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = bounds.size.width / 2.0
    }
}
