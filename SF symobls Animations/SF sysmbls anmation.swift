//
//  SF sysmbls anmation.swift
//  SF symobls Animations
//
//  Created by Mohamed Nour on 12/11/2024.
//

import SwiftUI

struct SF_sysmbls_anmation: View {
    @State private var clicked: Bool = false
    var body: some View {
        VStack
        {
            //SF symobl
            HStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .symbolEffect(.bounce, value: clicked)
                    .padding()
                Image(systemName: "house.fill")
                    .imageScale(.large)
                    .symbolEffect(.pulse, value: clicked)
                    .padding()
                Image(systemName: "moon.stars.fill")
                    .imageScale(.large)
                    .symbolEffect(.variableColor, value: clicked)
                    .padding()
                Image(systemName: "moon.stars.fill")
                    .imageScale(.large)
                    .symbolEffect(.variableColor, options: .repeat(3).speed(3), value: clicked)
                    .foregroundStyle(clicked ? .blue :  .red)
                    .padding()
            }
            //Button
            Button {
                clicked.toggle()
            } label: {
                Text("Click me")
                    .font(.headline)
            }

        }
    }
}

#Preview {
    SF_sysmbls_anmation()
}
