//
//  PhotoAlbumView.swift
//  PersonsBoard
//
//  Created by Anton Nikolaev on 06.02.2022.
//

import SwiftUI

struct PhotoAlbumView: View {
    let persons: [Person]
    

    private func getPhoto(rows: Int, columns: Int) -> Image {
        let number = rows * 3 + columns
        print("rows: \(rows) columuns: \(columns) Number: \(number)")
        if number > 9 {
            return Image(systemName: "leaf")
        }
        return Image(persons[number].photo)
                         
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<4){ rows in
                    HStack {
                        ForEach(0..<3) { columns in
                            getPhoto(rows: rows, columns: columns)
                                .resizable()
                            .frame(width: 100, height: 100)
                        }
                    }
                }
            }
            .navigationTitle("Список персонажей")
            .listStyle(.plain)
        }
    }
}


struct PhotoAlbumView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoAlbumView(persons: Person.getContactList())
    }
}
