//
//  ContentView.swift
//  HW_35_Coctacts
//
//  Created by Dmitrii Onegin on 01.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    let persons = Person.getContactList()
    
    var body: some View {
        
        TabView {
            ListView(persons: persons)
                .tabItem {
                    Label("Contacts", systemImage: "person.3")
                }
            TableView(persons: persons)
                .tabItem {
                    Label("Numbers", systemImage: "phone")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
