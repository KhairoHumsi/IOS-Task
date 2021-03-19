//
//  BottomBar.swift
//  Task
//
//  Created by mohammad khair pk on 17/03/2021.
//

import SwiftUI

struct BottomBar : View {
    
    @Binding var selected : Int
    
    var body : some View {
        HStack(alignment: .bottom) {
            Button(action: { selected = 0 }) {
                VStack {
                    Image(systemName: "house")
                    Text("home")
                        .font(.system(size: 10))
                        .font(.footnote)
                }
                
            }
            .frame(width: 40)
            .foregroundColor(self.selected == 0 ? .black : .gray)
            
            Spacer()
            
            Button(action: { selected = 1 }) {
                VStack {
                    Image(systemName: "bag")
                    Text("last_jobs")
                        .font(.system(size: 10))
                        .font(.footnote)
                }

            }
            .frame(width: 60)
            .foregroundColor(self.selected == 1 ? .black : .gray)
            
            Spacer()
            
                VStack {
                    Spacer()
                        .frame(height: 20)
                    
                    Text("iHR Box")
                        .font(.system(size: 10))
                        .font(.footnote)
                        .foregroundColor(self.selected == 4 ? .black : .gray)
                        .frame(width: 60)
                }
            
            Spacer()
            
            Button(action: { selected = 2  }) {
                VStack {
                    Image(systemName: "house")
                    Text("servies")
                        .font(.system(size: 10))
                        .font(.footnote)
                }

            }
            .frame(width: 60)
            .foregroundColor(self.selected == 2 ? .black : .gray)
            
            Spacer()
            
            Button(action: { selected = 3 }) {
                VStack {
                    Image(systemName: "ellipsis")
                    Text("more")
                        .font(.system(size: 10))
                        .font(.footnote)
                }

            }
            .frame(width: 40)
            .foregroundColor(self.selected == 3 ? .black : .gray)
        }
    }
}

struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar(selected: .constant(0))
    }
}
