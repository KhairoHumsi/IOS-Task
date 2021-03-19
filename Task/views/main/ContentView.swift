//
//  ContentView.swift
//  Task
//
//  Created by mohammad khair pk on 17/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var selected = 0
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            VStack {
                if selected == 0 {
                    HomeView()
                } else if selected == 1 {
                    Text("test 2")
                    
                } else if selected == 2 {
                    Text("test 3")
                    
                } else if selected == 3 {
                    Text("test 4")
                    
                } else  {
                    Text("test 5")
                    
                }
                
                Spacer()
            }
            .offset(y: -40)
            
            ZStack(alignment: .bottom) {
                BottomBar(selected: self.$selected)
                    .padding(.bottom, 8)
                    .padding(.horizontal)
                    .background(CurvedShape())
//                    .shadow(color: Colors.ui.lightGray, radius: 1, x: 1.5, y: -8)
                
                Button(action: { selected = 4 }) {
                    Image(systemName: "archivebox")
                        .renderingMode(.original)
                        .padding(18)
                    
                }
                .foregroundColor(self.selected == 4 ? .black : .gray)
                .background(Color.white)
                .clipShape(Circle())
                .offset(y: -32)
                
            }
        }
        .background(Colors.ui.darkWhite)
//        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CurvedShape : View {
    
    var body : some View {
        
        Path { path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
            
            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width / 2, y: 55), radius: 30, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            
            path.addLine(to: CGPoint(x: 0, y: 55))
            
        }
        .fill(Color.white)
        .rotationEffect(.init(degrees: 180))
    }
}


