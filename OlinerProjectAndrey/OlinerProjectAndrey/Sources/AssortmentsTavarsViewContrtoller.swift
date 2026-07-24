//
//  AssortmentsTavars.swift
//  OlinerProjectAndrey
//
//  Created by Андрей Матлах on 24.07.2026.
//

import UIKit

class AssortmentsTavarsViewContrtoller : UIViewController {
    
    private lazy var headerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBlue
        return view
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
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
        
    }
    
    private func setupHearachy(){
        view.addSubview(headerView)
        view.addSubview(tableView)
    }
    
    private func setupLayout(){
        NSLayoutConstraint.activate([
            
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leftAnchor.constraint(equalTo: view.leftAnchor),
            headerView.rightAnchor.constraint(equalTo: view.rightAnchor),
            headerView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            
            
            tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
        
    }
}
