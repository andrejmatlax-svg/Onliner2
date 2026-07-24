//
//  ViewController.swift
//  OlinerProjectAndrey
//
//  Created by Андрей Матлах on 23.07.2026.
//

import UIKit

class СategoriesViewController: UIViewController {
    
    private let category : [Category]
    
    init(category: [Category]) {
        self.category = category
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var tableView : UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 0)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CategoryTableViewCell.self, forCellReuseIdentifier: CategoryTableViewCell.identifiteCategory)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUiElements()
    }
    
    private func setupUiElements(){
        setupView()
        setupHearachy()
        setupLayout()
    }
    
    private func setupView(){
        view.backgroundColor = .systemBackground
        
    }
    
    
    private func setupHearachy(){
        view.addSubview(tableView)
        
    }
    
    
    private func setupLayout(){
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
        
    }
}

extension СategoriesViewController : UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return category.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.identifiteCategory, for: indexPath) as? CategoryTableViewCell
        let item = category[indexPath.row]
        cell?.configureCategegery(categoryes: item)
        return cell ?? UITableViewCell()
    }
}

extension СategoriesViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = category[indexPath.row]
        let typeСategoriesViewController = TypeСategoriesViewController(typeCategory: item.typeCategory, titleProduct: item.title)
        navigationController?.pushViewController(typeСategoriesViewController, animated: true)
    }
}
