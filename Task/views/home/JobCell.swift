//
//  JobCell.swift
//  Task
//
//  Created by mohammad khair pk on 17/03/2021.
//

import SwiftUI
import Kingfisher

struct JobCell: View {
    
    @Binding var isEnglish: Bool
    let model: JobsDocsModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                KFImage(URL(string: model.image))
                    .resizable()
                    .clipped()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 45, height: 45)
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text(model.createdDate)
                        .font(.system(size: 12))
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                    Text(isEnglish ? model.industryEn ?? "" : model.industryAr ?? "")
                        .font(.system(size: 12))
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.top, 3)
                }
            }
            .padding()
            
            HStack {
                Text(isEnglish ? model.employmentTypeEn : model.employmentTypeAr)
                    .font(.system(size: 14))
                    .font(.footnote)
                    .foregroundColor(Colors.ui.darkRed)
                    .padding(.top, 3)
                
                Spacer()
            }
            .padding(.horizontal)
            
            HStack {
                Text(isEnglish ? model.industryEn ?? "" : model.industryAr ?? "")
                    .font(.system(size: 14))
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.top, 3)
                
                Spacer()
            }
            .padding(.horizontal)
            
            HStack(spacing: 8) {
                Text(isEnglish ? model.jobTitleEn : model.jobTitleAr)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(Colors.ui.darkRed)
                    .background(Color(.white))
                    .cornerRadius(8)
                    .padding(1)
                    .background(Colors.ui.lightGray)
                    .cornerRadius(10)
                    .fixedSize()
                
                Text(isEnglish ? model.jobContryEn : model.jobContryAr)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(Colors.ui.darkRed)
                    .background(Color(.white))
                    .cornerRadius(8)
                    .padding(1)
                    .background(Colors.ui.lightGray)
                    .cornerRadius(10)
                    .fixedSize()
            }
            .padding(.horizontal, 8)
            .frame(height: 35)
            .padding(.bottom, 24)
        }
        .background(Color.white)
        .cornerRadius(12)
        .padding(.horizontal, 4)
        
    }
}

struct JobCell_Previews: PreviewProvider {
    static var previews: some View {
        JobCell(isEnglish: .constant(true), model: MOCK_JOBS)
    }
}
