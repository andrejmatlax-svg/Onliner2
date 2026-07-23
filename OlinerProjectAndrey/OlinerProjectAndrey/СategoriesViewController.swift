//
//  ViewController.swift
//  OlinerProjectAndrey
//
//  Created by Андрей Матлах on 23.07.2026.
//

import UIKit

class СategoriesViewController: UIViewController {
    
    private lazy var tableView : UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 0)
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
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
