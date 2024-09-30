//
//  HomeViewController.swift
//  TwitterClone
//
//  Created by Yusuf Yahya on 27/09/2024.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let timelineTableView: UITableView = {
        
        let tableView = UITableView()
        tableView.register(TweerTableViewCell.self, forCellReuseIdentifier: TweerTableViewCell.identifier)
        return tableView
        
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(timelineTableView)
        timelineTableView.delegate = self
        timelineTableView.dataSource = self
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        timelineTableView.frame = view.frame
    }
    
}


extension HomeViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TweerTableViewCell.identifier, for: indexPath) as?
                TweerTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    
   
    
}
