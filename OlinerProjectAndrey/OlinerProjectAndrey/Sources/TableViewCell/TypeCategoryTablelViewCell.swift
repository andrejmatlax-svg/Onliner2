//
//  Untitled.swift
//  OlinerProjectAndrey
//
//  Created by Андрей Матлах on 23.07.2026.
//

import UIKit

class TypeСategoriesViewCell: UITableViewCell {
    
    static var identifireTypeCategory = "\(TypeСategoriesViewCell.self)"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private lazy var  titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.tintColor = .black
        return label
    }()
    
    
    
    
    private func setupHierarchy() {
        self.addSubview(titleLabel)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor),
            
            
        ])
    }

    func configureTypeCategory(elements: TypeCategory){
        titleLabel.text = elements.title
        
    }
}
