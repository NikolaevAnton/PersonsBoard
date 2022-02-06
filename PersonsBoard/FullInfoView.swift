//
//  FullInfoView.swift
//  PersonsBoard
//
//  Created by Anton Nikolaev on 06.02.2022.
//

import SwiftUI

struct FullInfoView: View {
    let person: Person
    
    var body: some View {
        VStack {
            Text(person.fullName)
                .bold()
                .font(.largeTitle)
            Image(person.photo)
                .resizable()
                .frame(width: 400, height: 400)
                .padding()
            Text("Contact info:")
                .font(.headline)
                .foregroundColor(.green)
                .padding(.top, 20.0)
            HStack {
                Text("phone: \(person.phoneNumber)")
                Spacer()
                Text("email: \(person.email)")
            }
            Spacer()
        }

    }
}

struct FullInfoView_Previews: PreviewProvider {
    static var previews: some View {
        FullInfoView(person: Person.getContactList().first!)
    }
}
