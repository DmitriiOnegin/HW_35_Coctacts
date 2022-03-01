//
//  TableView.swift
//  HW_35_Coctacts
//
//  Created by Dmitrii Onegin on 01.03.2022.
//

import SwiftUI

struct TableView: View {
    
    let persons: [Person]
    
    var body: some View {
        
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(persons) { person in
                    
                    VStack() {
                        TableCellView(person: person)
                        Spacer(minLength: 40)
                    }
                }
            }
            .navigationTitle("Contact List")
            .padding()
            .background( Color.secondary.opacity(0.2)
                            .ignoresSafeArea())
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView(persons: Person.getContactList())
    }
}
