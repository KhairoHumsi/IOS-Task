//
//  ServicesCell.swift
//  Task
//
//  Created by mohammad khair pk on 18/03/2021.
//

import SwiftUI

struct ServicesCell: View {
    
    let model: ServiresDocsModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("ihr")
                    .resizable()
                    .frame(width: 45, height: 45)
                    .cornerRadius(12)
                    .padding(.trailing, 40)
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    CustomRatingView(rating: Int(model.rate))
                    
                    Text(model.sellerName)
                        .font(.system(size: 12))
                        .font(.footnote)
                        .foregroundColor(.white)
                    
                }
            }
            .padding()
            
            HStack {
                Text(model.serviceName)
                    .font(.system(size: 14))
                    .frame(maxWidth: (UIScreen.main.bounds.width / 3) * 2, minHeight: 35, maxHeight: 55, alignment: .trailing)
                    .font(.footnote)
                    .foregroundColor(.white)
                    .padding(.top, 3)
                
                Spacer()
            }
            .padding(.horizontal)
            
            HStack(spacing: 8) {
                
                Text(model.countryName)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(Color.white)
                    .background(Color(.init(white: 1, alpha: 0.15)))
                    .cornerRadius(10)
                    .fixedSize()
                
                Text(model.sellerType)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(Color.white)
                    .background(Color(.init(white: 1, alpha: 0.15)))
                    .cornerRadius(10)
                    .fixedSize()
            }
            .padding(.horizontal)
            .frame(height: 35)
            .padding(.bottom, 24)
        }
        .background(Colors.ui.darkBlue)
        .cornerRadius(12)
        .padding(.horizontal, 4)

    }
}

struct ServicesCell_Previews: PreviewProvider {
    static var previews: some View {
        ServicesCell(model: MOCK_SERVICES)
    }
}
