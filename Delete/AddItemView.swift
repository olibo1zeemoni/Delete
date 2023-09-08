//
//  AddItemView.swift
//  Delete
//
//  Created by Olibo moni on 08/09/2023.
//

import SwiftUI
import SwiftData


struct AddItemView: View {
    @Bindable var newItem : Item
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            Form {
                Section {
                    DatePicker("Timestamp", selection: $newItem.timestamp)
                }
            }
            .navigationBarTitle("Add Item")
            .navigationBarItems(
                trailing: Button("Save") {
                    let newItem = Item(timestamp: newItem.timestamp)
                    modelContext.insert(newItem)
                    dismiss()
                     // Reset the timestamp
                }
            )
        }
    }
}

