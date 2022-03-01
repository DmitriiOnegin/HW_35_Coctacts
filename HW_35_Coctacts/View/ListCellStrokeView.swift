//
//  ListCellStrokeView.swift
//  HW_35_Coctacts
//
//  Created by Dmitrii Onegin on 01.03.2022.
//

import SwiftUI

struct ListCellStrokeView: View {
    
    let image: String
    let title: String
    
    var body: some View {
        VStack{
            HStack(spacing: 15) {
                Image(systemName: image)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.blue)
                Text(title)
                Spacer()
            }
            Divider()
        }
        .padding(.horizontal)
    }
}

struct ListCellStrokeView_Previews: PreviewProvider {
    static var previews: some View {
        ListCellStrokeView(image: "phone", title: "123123")
    }
}
