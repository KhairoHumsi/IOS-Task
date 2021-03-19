//
//  Loading.swift
//  Task
//
//  Created by mohammad khair pk on 18/03/2021.
//

import SwiftUI

struct Loading: View {
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            
            ZStack {
                BlurView()
                
                VStack {
                    Indicatior()
                    Text("loading...")
                        .font(.footnote)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .padding(.top, 8)
                }
            }
            .frame(width: 150, height: 150)
            .cornerRadius(12)
            .shadow(color: Color.black, radius: 6, x: 0.0, y: 0.0)
            
            Spacer()
        }
    }
}

struct Loading_Previews: PreviewProvider {
    static var previews: some View {
        Loading()
    }
}

struct BlurView: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIVisualEffectView {
        let effect = UIBlurEffect(style: .systemMaterialDark)
        let view = UIVisualEffectView(effect: effect)
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<BlurView>) {
        
    }
}

struct Indicatior: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<Indicatior>) -> UIActivityIndicatorView {
        let indicatior = UIActivityIndicatorView(style: .large)
        indicatior.color = UIColor.white
        indicatior.startAnimating()
        return indicatior
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Indicatior>) {
        
    }
}
