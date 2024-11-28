//
//  ViewController.swift
//  Potok-9-2-5
//
//  Created by DOODESH . on 27.11.2024.
//

import UIKit




class ViewController: UIViewController, UITableViewDataSource {

    var tebleData = TableItem.mockData()
    var secondTableData = TableItem.secondMockData()
    lazy var tableView: UITableView = {

        $0.dataSource = self
        $0.delegate = self
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

        return $0
    }(UITableView(frame: view.frame, style: .insetGrouped))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
       
    }
}

extension ViewController: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return tebleData.count
        } else {
            return secondTableData.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       
        var config = cell.defaultContentConfiguration()
        var localArrey: [TableItem] = []
      
        switch indexPath.section {
            case 0: localArrey = tebleData
            default: localArrey = secondTableData
        }
        
        config.text = localArrey[indexPath.row].text
        config.image = UIImage(named: localArrey[indexPath.row].image)
        config.secondaryText = localArrey[indexPath.row].secondText
        cell.contentConfiguration = config
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "USERS"
        default: return "GROUPS"
        }
    }
}
