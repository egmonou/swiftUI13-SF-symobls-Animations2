//
//  SFSymbolsTansations.swift
//  SF symobls Animations
//
//  Created by Mohamed Nour on 13/11/2024.
//

import SwiftUI

struct SFSymbolsTansations: View {
    @State private var clicked: Bool = false
    @State private var pauseGlobe: Bool = false
    @State private var runCounnt = 1
    @State private var layerAnimate: Bool = true
    @State private var animationRnnin: Bool = false

    var body: some View {
        VStack {
            HStack {
                Image(systemName: clicked ? "person.fill" : "globe")
                    .imageScale(.large)
                    .symbolEffectsRemoved()
                    .symbolEffect(.pulse.wholeSymbol, value: clicked)
                    .contentTransition(.symbolEffect(.replace.wholeSymbol.upUp))
            }
            .padding()
        }
        
        HStack {
            Button {
                clicked.toggle()
            } label: {
                Text("Click Me")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .bold()
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.blue)
                    )
            }
        }
        
        Button {
            runCounnt += 1
        } label: {
            Label("Hello World! \(runCounnt)", systemImage: "figure.run.circle")
        }.symbolEffect(layerAnimate ? .bounce.byLayer : .bounce.wholeSymbol, options: .repeat(runCounnt), value: runCounnt)
            .font(.largeTitle)
            .padding()


        
        
    }
}

#Preview {
    SFSymbolsTansations()
}
