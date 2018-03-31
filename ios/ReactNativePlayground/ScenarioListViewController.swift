//
//  ScenarioListViewController.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 3/31/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import UIKit

final class ScenarioListViewController: UIViewController {
    
    fileprivate let cellReuseId = "Cell"
    fileprivate let scene: ScenarioListScene
    fileprivate let listView: UITableView
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    init(with scene: ScenarioListScene) {
        self.scene = scene
        listView = UITableView(frame: .zero)
        super.init(nibName: scene.nibName, bundle: nil)
        title = "Scenario List"
        
        let setUpListView = {
            self.view.addSubview(self.listView)
            self.listView.pinEdgesToSuperviewEdges()
            self.listView.dataSource = self
            self.listView.delegate = self
            self.listView.register(UITableViewCell.self, forCellReuseIdentifier: self.cellReuseId)
        }
        setUpListView()
    }
}

extension ScenarioListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scene.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: cellReuseId, for: indexPath)
    }
}

extension ScenarioListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.textLabel?.text = scene.items[indexPath.row].rawValue
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        scene.select(item: scene.items[indexPath.row])
    }
}
