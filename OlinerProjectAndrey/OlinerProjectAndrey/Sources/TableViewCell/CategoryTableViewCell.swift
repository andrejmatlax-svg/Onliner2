//
//  CategoryTableViewCell.swift
//  OlinerProjectAndrey
//
//  Created by Андрей Матлах on 23.07.2026.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    static var identifiteCategory = "\(CategoryTableViewCell.self)"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .black
        return imageView
    }()
    
   
    private lazy var  titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .label
        return label
    }()
    
    
    private func setupHierarchy() {
        self.addSubview(iconImageView)
        self.addSubview(titleLabel)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            iconImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            iconImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            iconImageView.heightAnchor.constraint(equalToConstant:30),
            iconImageView.widthAnchor.constraint(equalToConstant: 30),
            
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor),
            titleLabel.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 10),
            titleLabel.heightAnchor.constraint(equalToConstant: 50),
            
            
        ])
    }
    
    func configureCategegery(categoryes: Category) {
        iconImageView.image = categoryes.iconName
        titleLabel.text = categoryes.title
    }
    
    
}
