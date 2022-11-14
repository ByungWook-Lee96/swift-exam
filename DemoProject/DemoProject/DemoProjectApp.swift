//
//  DemoProjectApp.swift
//  DemoProject
//
//  Created by 병욱 on 2022/11/14.
//

import SwiftUI

@main
struct DemoProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
