//
//  ListCellView.swift
//  HW_35_Coctacts
//
//  Created by Dmitrii Onegin on 01.03.2022.
//

import SwiftUI

struct ListCellView: View {
    
    let person: Person
    
    var body: some View {
        ZStack{
            Color.secondary.opacity(0.2)
                .ignoresSafeArea()
            VStack{
                VStack(spacing: 15) {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.black)
                    ListCellDetaleView(person: person)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.white)
                    
                )
                .padding()
                Spacer()
            }
            .navigationTitle(person.name)
        }
    }
}

struct ListCellView_Previews: PreviewProvider {
    static var previews: some View {
        ListCellView(person: Person.getContactList()[0])
    }
}
