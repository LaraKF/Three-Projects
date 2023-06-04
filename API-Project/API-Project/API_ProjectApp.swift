//
//  API_ProjectApp.swift
//  API-Project
//
//  Created by Lara K on 14/11/1444 AH.
//

import SwiftUI

@main
struct API_ProjectApp: App {
    @StateObject private var storeViewModel = StoreViewModel()

    var body: some Scene {
        WindowGroup {
            CategoryListScreen().environmentObject(storeViewModel)
        }
    }
}

