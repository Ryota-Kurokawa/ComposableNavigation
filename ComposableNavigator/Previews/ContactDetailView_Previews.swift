//
//  ContactDetailView_Previews.swift
//  ComposableNavigator
//
//  Created by ryota1582 on 2025/04/14.
//

import SwiftUI
import ComposableArchitecture

#Preview {
    NavigationStack {
        ContactDetailView(
            store: Store(
                initialState: ContactDetailFeature.State(
                    contact: Contact(id: UUID(), name: "Blob")
                )
            ) {
                ContactDetailFeature()
            }
        )
    }
}

