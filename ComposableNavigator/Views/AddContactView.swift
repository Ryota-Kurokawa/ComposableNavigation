//
//  AddContactView.swift
//  ComposableNavigator
//
//  Created by ryota1582 on 2025/04/14.
//

import ComposableArchitecture
import SwiftUI

struct AddContactView: View {
    @Bindable var store: StoreOf<AddContactFeature>


    var body: some View {
        Form {
            TextField("Name", text: $store.contact.name.sending(\.setName))
            Button("Save") {
                store.send(.saveButtonTapped)
            }
        }
        .toolbar {
            ToolbarItem {
                Button("Cancel") {
                    store.send(.cancelButtonTapped)
                }
            }
        }
    }
}
