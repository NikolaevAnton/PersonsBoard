//
//  ImagesListView.swift
//  PersonsBoard
//
//  Created by Anton Nikolaev on 06.02.2022.
//

import SwiftUI

struct ImagesListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: FullInfoView(person: person)) {
                    HStack {
                        Image(person.photo)
                            .resizable()
                            .frame(width: 80, height: 80)
                        Text("\(person.fullName)")
                        Spacer()
                        Text("\(person.id)")
                    }
                }
            }
            .navigationTitle("Список персонажей")
            .listStyle(.plain)
        }
    }
}

struct ImagesListView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesListView(persons: Person.getContactList())
    }
}
