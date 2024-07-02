//
//  IconeCell.swift
//  testRay
//
//  Created by Сергей Сырбу on 02.07.2024.
//

import UIKit

class IconeCell: UITableViewCell {
    
    private lazy var iconImage: UIImageView = {
       let image = UIImageView()
        return image
    }()
    
    private lazy var nameIconLabel: UILabel = {
       let label = UILabel()
        label.textColor = .white
        return label
    }()
    
    private lazy var sizeIconLabel: UILabel = {
       let label = UILabel()
        label.textColor = .white
        return label
    }()
    
    private lazy var favoriteIconeButton: UIButton = {
       let button = UIButton()
        button.tintColor = .systemPink
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 25, weight: .bold, scale: .large)
        let largeHeart = UIImage(systemName: "heart", withConfiguration: largeConfig)
        button.setImage(largeHeart, for: .normal)
        return button
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure (with model: TestModel) {
        iconImage.image = UIImage(named: model.image)
        nameIconLabel.text = model.name
        sizeIconLabel.text = model.size
    }
    
    private func setupCell() {
        [iconImage, nameIconLabel, sizeIconLabel, favoriteIconeButton].forEach {contentView.addSubview($0)}
        self.backgroundColor = .black
    }
    
    private func setupLayout() {
        iconImage.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview().inset(10)
            make.size.equalTo(CGSize(width: 100, height: 100))
        }
        nameIconLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(30)
            make.leading.equalTo(iconImage.snp.trailing).inset(-10)
        }
        sizeIconLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(30)
            make.leading.equalTo(iconImage.snp.trailing).inset(-10)
        }
        favoriteIconeButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.trailing.equalToSuperview().inset(25)
        }
    }
    
}
