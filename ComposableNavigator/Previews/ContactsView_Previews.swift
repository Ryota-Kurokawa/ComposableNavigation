//
//  ContactsView_Previews.swift
//  ComposableNavigator
//
//  Created by ryota1582 on 2025/04/14.
//

import ComposableArchitecture
import SwiftUI
import ComposableNavigator

#Preview {
    NavigationStack {
        ContactsView(store: Store(initialState: ContactsFeature.State(

        ), reducer: {
            ContactsFeature()
        }))
    }
}
