//
//  Phaseanimatio01.swift
//  SF symobls Animations
//
//  Created by Mohamed Nour on 14/11/2024.
//

import SwiftUI

struct AnimatePropeties: Equatable {
    let color: Color
    let bgColr: Color
    let font: Font
    let fontWeight: Font.Weight
    let cornrRadius: CGFloat
    let xScale: CGFloat
    let yScale: CGFloat
    let offsetY: CGFloat
    let rotate: CGFloat
}

struct Phaseanimatio01: View {
    @State private var animationPhase: Bool = false
    let phases: [AnimatePropeties] = [
        .init(color: .red, bgColr: .black, font: .largeTitle, fontWeight: .semibold, cornrRadius: 20, xScale: 1.2, yScale: 1.7, offsetY: 0, rotate: 30),
        .init(color: .blue, bgColr: .white, font: .title, fontWeight: .semibold, cornrRadius: 10, xScale: 1.4, yScale: 1.8, offsetY: 0, rotate: 40),
        .init(color: .white, bgColr: .blue, font: .largeTitle, fontWeight: .bold, cornrRadius: 5, xScale: 1.8, yScale: 1.9, offsetY: 0, rotate: 50)
    ]
        
    var body: some View {
        VStack {
            Spacer()
            Text("Hello, World!")
                .phaseAnimator(phases, trigger: animationPhase) { view, phase in view
                        .foregroundStyle(phase.color)
                        .font(phase.font)
                        .fontWeight(phase.fontWeight)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: phase.cornrRadius)
                            .fill(phase.bgColr)
                    )
                    .scaleEffect(x: phase.xScale, y: phase.yScale)
                    .offset(y: 0)
                    .rotation3DEffect(Angle(degrees: phase.rotate), axis: (x: 1.0, y: 0.0, z: 0.0))
                }
            
            Spacer()
        }
        
        Button {
            animationPhase.toggle()
        } label: {
            Text(animationPhase ? "Stop" : "play")
        }

    }
}

#Preview {
    Phaseanimatio01()
}
