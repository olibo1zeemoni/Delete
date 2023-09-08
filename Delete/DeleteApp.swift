//
//  DeleteApp.swift
//  Delete
//
//  Created by Olibo moni on 07/09/2023.
//

import SwiftUI
import SwiftData
import CloudKit

@main
struct DeleteApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        let modelConfig = ModelConfiguration(schema: Schema([Item.self]),
                                             url: URL(filePath: "/path/to/trip.store/"),
                                             cloudKitDatabase : .private("com.example.items"))
        do {
            return try ModelContainer(for: schema, configurations: modelConfiguration)
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
