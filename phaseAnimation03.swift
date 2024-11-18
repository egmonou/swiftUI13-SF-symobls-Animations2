//
//  phaseAnimation03.swift
//  SF symobls Animations
//
//  Created by Mohamed Nour on 15/11/2024.
//

import SwiftUI

struct phaseAnimation03: View {
    @State private var animateME: Bool = false
    var body: some View {
        VStack {
            Spacer()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .phaseAnimator(Phae.allCases, trigger: animateME) {
                    view, phase in
                    view
                        .font(phase == .start ? .largeTitle : .title)
                        .blur(radius: animateME ? 10 : 0)

                }
            Spacer()
            Button {
                animateME.toggle()
            } label: {
                Text(animateME ? "Stop" : "Start")
            }

        }

    }
    
    enum Phae: CaseIterable {
        case start, middle, end
    }
}






#Preview {
    phaseAnimation03()
}
