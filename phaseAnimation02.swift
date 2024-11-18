//
//  phaseAnimation02.swift
//  SF symobls Animations
//
//  Created by Mohamed Nour on 14/11/2024.
//

import SwiftUI

struct phaseAnimation02: View {
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [.yellow, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.3)
                .ignoresSafeArea()
            
            Image("fruit")
                .resizable()
                .scaledToFit()
                .phaseAnimator([0, 10, 15, 3]) {
                    view, phase in
                        view
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: phase
                                )
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .padding()
                        }
                }
        }

    }
}

#Preview {
    phaseAnimation02()
}
