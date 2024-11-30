//
//  ViewController.swift
//  Potok-9-2-6
//
//  Created by DOODESH . on 29.11.2024.
//

import UIKit

class ViewController: UIViewController {

    let tableData = Card.allCards
    
    lazy var tableView: UITableView = {
        $0.register(CardCellView.self, forCellReuseIdentifier: CardCellView.identifier)
        $0.dataSource = self
        $0.separatorStyle = .none
        return $0
    }(UITableView(frame: view.frame, style: .plain))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CardCellView.identifier, for: indexPath) as? CardCellView
        else { return UITableViewCell() }
        let cart = tableData[indexPath.row]
        cell.setupCell(card: cart)
        cell.selectionStyle = .none
        return cell
    }
}
