//
//  OnlinerModel.swift
//  OlinerProjectAndrey
//
//  Created by Андрей Матлах on 23.07.2026.
//
import UIKit

struct Category {
    var title : String
    var iconName : UIImage
    var typeCategory: [[TypeCategory]]
    
}

struct TypeCategory {
    var title : String
    
}


extension Category {
    
    static var cstigoryes : [Category] = [
        
        Category(title: "Телефоны",
        iconName:  UIImage(systemName: "iphone") ?? UIImage(),
        typeCategory: [
            [
        TypeCategory(
            title: "айфоны"
                    
           )]
        ]),
        
        Category(title: "Компьютеры",
        iconName:  UIImage(systemName: "dot.scope.laptopcomputer") ?? UIImage(),
        typeCategory: [
            [
        TypeCategory(
            title: "invideo"
           )]
        ]),
        
        Category(title: "Стройка и ремонт",
        iconName:  UIImage(systemName: "hammer") ?? UIImage(),
        typeCategory: [
            [
        TypeCategory(
            title: "Доски"
           )]
        ]),
        
        Category(title: "Авто и Мото",
        iconName:  UIImage(systemName: "car") ?? UIImage(),
        typeCategory: [
            [
        TypeCategory(
            title: "Ремонт"
           )]
        ]),
        
        
        
    ]
}
