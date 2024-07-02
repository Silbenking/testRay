//
//  FavoriteView.swift
//  testRay
//
//  Created by Сергей Сырбу on 02.07.2024.
//

import UIKit

final class FavoriteView: UIView {
    
    lazy var iconTable: UITableView = {
       let table = UITableView()
        table.register(IconeCell.self, forCellReuseIdentifier: "IconeCell")
        table.estimatedRowHeight = UITableView.automaticDimension
        table.backgroundColor = .black
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
        [iconTable].forEach { self.addSubview($0)}
    }
    
    private func setupLauout() {
        
        iconTable.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.horizontalEdges.equalTo(10)
            make.bottom.equalToSuperview()
        }
    }
    
}
