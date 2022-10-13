//
//  lottiview.swift
//  weatherapp
//
//  Created by Gopathi Mahesh on 13/10/22.
//

import Foundation
import Lottie
import SwiftUI

struct Lottieview: UIViewRepresentable {
    var name: String
    var loopMode: LottieLoopMode = .loop
    
    func makeUIView(context: UIViewRepresentableContext<Lottieview>) -> some UIView {
        let view = UIView()
        return view
        
    }
   
    
    
        
        func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<Lottieview>) {
            uiView.subviews.forEach({$0.removeFromSuperview()})
            
        let animationView = AnimationView()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        uiView.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: uiView.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: uiView.heightAnchor)
        
        
        ])
        animationView.animation = Animation.named(name)
            animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()
        
    }
}


