//
//  FavoriteView.swift
//  testRay
//
//  Created by Сергей Сырбу on 02.07.2024.
//

import UIKit
import SnapKit

final class SearchView: UIView {
    
    lazy var searchBar: UISearchBar = {
       let searchBar = UISearchBar()
        searchBar.placeholder = "Поиск"
        searchBar.barTintColor = .white
        searchBar.searchTextField.textColor = .white
        return searchBar
    }()
    
    lazy var searchButton: UIButton = {
       let button = UIButton()
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 140, weight: .bold, scale: .large)
        let largeSearch = UIImage(systemName: "magnifyingglass.circle.fill", withConfiguration: largeConfig)
        button.setImage(largeSearch, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        return button
    }()
    
    lazy var iconTable: UITableView = {
       let table = UITableView()
        table.estimatedRowHeight = UITableView.automaticDimension
        return table
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupLauout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = .black
        [searchBar, searchButton].forEach { self.addSubview($0)}
    }
    
    private func setupLauout() {
        searchBar.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(60)
            make.leading.equalToSuperview().inset(20)
            make.trailing.equalTo(searchButton.snp.leading).inset(-5)
        }
        
        searchButton.snp.makeConstraints { make in
            make.centerY.equalTo(searchBar.snp.centerY)
            make.trailing.equalToSuperview().inset(20)
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
    }
    
    
}
