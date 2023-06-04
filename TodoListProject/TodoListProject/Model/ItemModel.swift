//
//  ItemModel.swift
//  TodoListProject
//
//  Created by Lara K on 15/11/1444 AH.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: title, title: title, isCompleted: !isCompleted)
    }
}
