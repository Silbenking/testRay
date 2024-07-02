//
//  ViewController.swift
//  testRay
//
//  Created by Сергей Сырбу on 01.07.2024.
//

import UIKit

struct TestModel {
    let image: String
    let name: String
    let size: String
}

class SearchVC: UIViewController {
    
    private let searchView = SearchView()
    
    let testMod = [ TestModel(image: "icon", name: "test", size: "30x30"),
                    TestModel(image: "icon", name: "test", size: "30x30"),
                    TestModel(image: "icon", name: "test", size: "30x30"),
                    TestModel(image: "icon", name: "test", size: "30x30"),
                    TestModel(image: "icon", name: "test", size: "30x30")
    ]
    
    override func loadView() {
        self.view = searchView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
   private func setupTableView() {
       searchView.iconTable.dataSource = self
    }
}

extension SearchVC: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        testMod.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "IconeCell", for: indexPath) as? IconeCell else {fatalError()}
        let test = testMod[indexPath.row]
        cell.configure(with: test)
        return cell
    }
}

