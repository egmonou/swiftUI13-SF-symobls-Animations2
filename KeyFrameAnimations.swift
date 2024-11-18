//
//  KeyFrameAnimations.swift
//  SF symobls Animations
//
//  Created by Mohamed Nour on 15/11/2024.
//

import SwiftUI

struct AnimatinoVales {
    var offsetY: CGFloat = 300
    var rotation: Angle = Angle(degrees: 0)
    var scaleX = 1.0
}


struct KeyFrameAnimations: View {
    var body: some View {
        MyShape()
            .keyframeAnimator(initialValue: AnimatinoVales()) {
                view, Value in
                    view
                    .rotationEffect(Value.rotation)
                    .offset(y: Value.offsetY)
                    .scaleEffect(x: Value.scaleX)
            } keyframes: {
                _ in
                KeyframeTrack(\.offsetY) {
                    LinearKeyframe(-300, duration: 0.2 * 4)
                    
                    SpringKeyframe(0, duration: 0.7 * 4)
                }
                
              
            }

    }
}


struct MyShape: View {
    var body: some View {
        Circle()
            .stroke(AngularGradient(
                colors: [.red, .blue, .green, .yellow, .indigo], center: .center), lineWidth: 20)
            .shadow(radius: 3)
            .frame(width: 100,height: 100)
    }
}

#Preview {
    KeyFrameAnimations()
}
