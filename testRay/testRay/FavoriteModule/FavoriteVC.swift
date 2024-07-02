//
//  FavoriteVC.swift
//  testRay
//
//  Created by Сергей Сырбу on 01.07.2024.
//

import UIKit

final class FavoriteVC: UIViewController {
    
    let testMod = [ TestModel(image: "icon", name: "test", size: "30x30"),
                    TestModel(image: "icon", name: "test", size: "30x30"),
                    TestModel(image: "icon", name: "test", size: "30x30"),
                    TestModel(image: "icon", name: "test", size: "30x30"),
                    TestModel(image: "icon", name: "test", size: "30x30")
    ]
    
   private let favoriteView = FavoriteView()
    
    override func loadView() {
        self.view = favoriteView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }

    private func setupTableView() {
        favoriteView.iconTable.dataSource = self
    }
}

extension FavoriteVC: UITableViewDataSource {

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

