//
//  TableCellView.swift
//  HW_35_Coctacts
//
//  Created by Dmitrii Onegin on 01.03.2022.
//

import SwiftUI

struct TableCellView: View {
    
    let person: Person
    
    var body: some View {
        
        VStack{
            Section {
                VStack{
                    ListCellDetaleView(person: person)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.white)
                )
            } header: {
                HStack{
                    Text(person.name)
                        .font(.headline)
                        .bold()
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.horizontal)
            }
        }
    }
}

struct TableCellView_Previews: PreviewProvider {
    static var previews: some View {
        TableCellView(person: Person.getContactList()[0])
    }
}
