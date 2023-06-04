//
//  TodoListProjectApp.swift
//  TodoListProject
//
//  Created by Lara K on 15/11/1444 AH.
//

import SwiftUI

@ main
struct TodoListProjectApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup{
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
