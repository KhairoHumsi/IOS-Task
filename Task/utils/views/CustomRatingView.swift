//
//  CustomRatingView.swift
//  Task
//
//  Created by mohammad khair pk on 19/03/2021.
//

import SwiftUI

struct CustomRatingView: View {
    
    var rating: Int

    var label = ""

    var maximumRating = 5

    var offImage: Image?
    var onImage = Image(systemName: "star.fill")

    var offColor = Color.gray
    var onColor = Color.white
    
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }

            ForEach(1..<maximumRating + 1) { number in
                self.image(for: number)
                    .resizable()
                    .frame(width: 11, height: 11, alignment: .center)
                    .foregroundColor(number > self.rating ? self.offColor : self.onColor)
                    
            }
        }.environment(\.layoutDirection, .leftToRight)
    }
    
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

struct CustomRatingView_Previews: PreviewProvider {
    static var previews: some View {
        CustomRatingView(rating: 4)
    }
}
