//
//  ComposableNavigatorApp.swift
//  ComposableNavigator
//
//  Created by ryota1582 on 2025/04/10.
//

import SwiftUI
import ComposableArchitecture

@main
struct ComposableNavigatorApp: App {
    static let store = Store(initialState: ContactsFeature.State()) {
        ContactsFeature()
    }

    var body: some Scene {
        WindowGroup {
            ContactsView(store: ComposableNavigatorApp.store)
        }
    }
}
