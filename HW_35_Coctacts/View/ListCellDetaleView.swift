//
//  ListCellDetaleView.swift
//  HW_35_Coctacts
//
//  Created by Dmitrii Onegin on 01.03.2022.
//

import SwiftUI

struct ListCellDetaleView: View {
    
    let person: Person
    
    var body: some View {
        ListCellStrokeView(image: Contacts.phone.rawValue , title: person.phoneNumber)
        ListCellStrokeView(image: Contacts.email.rawValue , title: person.email)
    }
}

struct ListCellDetaleView_Previews: PreviewProvider {
    static var previews: some View {
        ListCellDetaleView(person: Person.getContactList()[0])
    }
}
