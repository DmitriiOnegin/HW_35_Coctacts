//
//  ListView.swift
//  HW_35_Coctacts
//
//  Created by Dmitrii Onegin on 01.03.2022.
//

import SwiftUI

struct ListView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView{
            List(persons) { person in
                NavigationLink {
                    ListCellView(person: person)
                } label: {
                    Text(person.name)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(persons: Person.getContactList())
    }
}
