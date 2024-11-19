//
//  KeyframeAnimationView.swift
//  SwiftUIAnimations
//
//  Created by Arun on 10/11/24.
//

import SwiftUI

struct KeyframeAnimationView: View {
    
    private struct AnimationProperties {
        var trasnlation: Double = 0.0
        var verticalStrech: Double = 1.0
    }
    
    var totalDuration = 1.0
    
    var body: some View {
        Image(systemName: "checkmark.circle.fill")
            .resizable()
            .foregroundStyle(.blue)
            .frame(width: 100, height: 100)
            .keyframeAnimator(initialValue: AnimationProperties(), repeating: true) { content, value in
                content.scaleEffect(.init(width: 1, height: value.verticalStrech), anchor: .bottom)
                    .offset(y: value.trasnlation)
                
            } keyframes: { _ in
                KeyframeTrack(\.verticalStrech) {
                    SpringKeyframe(0.6, duration: 0.2 * totalDuration)
                    CubicKeyframe(1.2, duration: 0.6 * totalDuration)
                    CubicKeyframe(1.1, duration: 0.25 * totalDuration)
                    SpringKeyframe(1, duration: 0.25 * totalDuration)
                }
                
                KeyframeTrack(\.trasnlation) {
                       CubicKeyframe(0, duration: 0.2 * totalDuration)
                       CubicKeyframe(-100, duration: 0.4 * totalDuration)
                       CubicKeyframe(-100, duration: 0.4 * totalDuration)
                       CubicKeyframe(0, duration: 0.5 * totalDuration)
                   }
            }
        
    }
}

#Preview {
    KeyframeAnimationView()
}
