//
//  ContentView.swift
//  PersonsBoard
//
//  Created by Anton Nikolaev on 05.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let perons = Person.getContactList()
    
    var body: some View {
        TabView {
            ImagesListView(persons: perons)
                .tabItem {
                    Image(systemName: "person.fill.and.arrow.left.and.arrow.right")
                    Text("Фотосписок")
                }
            PhotoAlbumView(persons: perons)
                .tabItem {
                    Image(systemName: "person.fill.viewfinder")
                    Text("фотоальбом")
                }
            PersonsListView(persons: perons)
                .tabItem {
                    Image(systemName: "note.text")
                    Text("Список")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
