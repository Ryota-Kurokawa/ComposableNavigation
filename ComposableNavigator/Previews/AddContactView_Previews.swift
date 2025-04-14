//
//  AddContactView_Previews.swift
//  ComposableNavigator
//
//  Created by ryota1582 on 2025/04/14.
//

import SwiftUI
import ComposableArchitecture

#Preview {
    NavigationStack {
        AddContactView(
            store: Store(
                initialState: AddContactFeature.State(
                    contact: Contact(
                        id: UUID(),
                        name: "Blob"
                    )
                )
            ) {
                AddContactFeature()
            }
        )
    }
}
