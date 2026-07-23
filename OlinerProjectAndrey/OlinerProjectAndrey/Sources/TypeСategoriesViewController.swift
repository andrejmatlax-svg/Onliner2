//
//  TypeCategoryViewController.swift
//  OlinerProjectAndrey
//
//  Created by Андрей Матлах on 23.07.2026.
//

import UIKit

class TypeСategoriesViewController : UIViewController {
    
    
    private let typeCategory : [[TypeCategory]]
    private let titleProduct : String
    
    private let headerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBlue
        return view
    }()
   
    init(typeCategory: [[TypeCategory]], titleProduct: String) {
        self.typeCategory = typeCategory
        self.titleProduct = titleProduct
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUiElements()
    }
    
    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.dataSource = self
        table.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right:0)
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    private func setupUiElements(){
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    private func setupView() {
        view.backgroundColor = .systemBackground
        title = titleProduct
    }
    
    private func setupHierarchy() {
        view.addSubview(headerView)
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leftAnchor.constraint(equalTo: view.leftAnchor),
            headerView.rightAnchor.constraint(equalTo: view.rightAnchor),
            headerView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            
            
            tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension TypeСategoriesViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TypeСategoriesViewCell.identifireTypeCategory, for: indexPath) as? TypeСategoriesViewCell
        let item = typeCategory[indexPath.section][indexPath.row]
        cell?.configureTypeCategory(elements: item)
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return typeCategory[section].first?.title
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typeCategory[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return typeCategory.count
    }
}
