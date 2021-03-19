//
//  CustomTextField.swift
//  Task
//
//  Created by mohammad khair pk on 17/03/2021.
//

import SwiftUI

struct CustomTextField: View {
    
    @Binding var text: String
    let placeHolder: String
    let imageName: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                HStack {
                    Text(placeHolder)
                        .foregroundColor(Color(.init(white: 1, alpha: 0.87)))
                        .padding(.leading, 40)
                    
                        Spacer()
                    
                }
//                    .flipsForRightToLeftLayoutDirection(true)
            }
            
            HStack(spacing: 16) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20, alignment: .center)
                    .foregroundColor(Color.white)
                
                TextField("", text: $text)
            }
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant(""), placeHolder: "testing", imageName: "magnifyingglass")
    }
}
