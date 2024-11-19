//
//  RotationAnimation.swift
//  SwiftUIAnimations
//
//  Created by Arun on 09/11/24.
//

import SwiftUI

struct RotationAnimation: View {
    
    @State private var isRotating = 0.0
    
    var body: some View {
        Image(systemName: "gear")
            .font(.largeTitle)
            .rotationEffect(.degrees(isRotating))
            .onAppear {
                withAnimation(.linear(duration: 1).speed(0.1).repeatForever(autoreverses: false)) {
                    isRotating = 360
                }
            }
    }
}

#Preview {
    RotationAnimation()
}
