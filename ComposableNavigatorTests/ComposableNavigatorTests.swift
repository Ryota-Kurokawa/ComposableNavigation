//
//  ComposableNavigatorTests.swift
//  ComposableNavigatorTests
//
//  Created by ryota1582 on 2025/04/14.
//

import Testing
import ComposableArchitecture
import Foundation
import SwiftUI

@testable import ComposableNavigator

@MainActor
struct ContactsFeatureTests {
  @Test
  func deleteContact() async {
    let store = TestStore(
      initialState: ContactsFeature.State(
        contacts: [
          Contact(id: UUID(0), name: "Blob"),
          Contact(id: UUID(1), name: "Blob Jr."),
        ]
      )
    ) {
      ContactsFeature()
    }

    await store.send(.deleteButtonTapped(id: UUID(1))) {
      $0.destination = .alert(.confirmDeletion(id: UUID(1)))
    }
    await store.send(\.destination.alert.confirmDeletion, UUID(1)) {
      $0.contacts = [
        Contact(id: UUID(0), name: "Blob")
      ]
      $0.destination = nil
    }
  }
}
