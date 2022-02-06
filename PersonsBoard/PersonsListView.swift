//
//  PersonsListView.swift
//  PersonsBoard
//
//  Created by Anton Nikolaev on 06.02.2022.
//

import SwiftUI

struct PersonsListView: View {
    let persons: [Person]
    var body: some View {
        NavigationView {
            List(persons) {person in
                NavigationLink(destination: FullInfoView(person: person)) {
                    Text("ID: \(person.id) Full name: \(person.fullName)\n Email: \(person.email) Phone: \(person.phoneNumber)")
                }
            }
            .navigationTitle("Список контактов")
            .listStyle(.plain)
        }
    }
}

struct PersonsListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsListView(persons: Person.getContactList())
    }
}
