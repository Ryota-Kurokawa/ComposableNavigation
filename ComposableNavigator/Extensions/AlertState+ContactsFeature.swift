//
//  AlertState+ContactsFeature.swift
//  ComposableNavigator
//
//  Created by ryota1582 on 2025/04/14.
//

import Foundation
import ComposableArchitecture

extension AlertState where Action == ContactsFeature.Action.Alert {
  static func confirmDeletion(id: Contact.ID) -> Self {
    Self {
      TextState("Are you sure?")
    } actions: {
      ButtonState(role: .destructive, action: .confirmDeletion(id: id)) {
        TextState("Delete")
      }
    }
  }
}

extension AlertState where Action == ContactDetailFeature.Action.Alert {
  static let confirmDeletion = Self {
    TextState("Are you sure?")
  } actions: {
    ButtonState(role: .destructive, action: .confirmDeletion) {
      TextState("Delete")
    }
  }
}

