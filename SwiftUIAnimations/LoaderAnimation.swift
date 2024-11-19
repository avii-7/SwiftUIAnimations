//
//  LoaderAnimation.swift
//  SwiftUIAnimation
//
//  Created by Arun Kumar on 19/11/24.
//

import SwiftUI

struct LoaderAnimation: View {
    struct AnimationValues {
        var startTrim = 0.0
        var endTrim = 0.0
    }

    var body: some View {
        KeyframeAnimator(initialValue: AnimationValues(), repeating: true) { value in
            Circle()
                .trim(from: value.startTrim, to: value.endTrim)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .frame(width: 100, height: 100)
        } keyframes: { _ in
            KeyframeTrack(\.startTrim) {
                LinearKeyframe(0.0, duration: 1.0)
                LinearKeyframe(1.0, duration: 1.0)
            }
            KeyframeTrack(\.endTrim) {
                LinearKeyframe(1.0, duration: 1.0)
            }
        }
    }
}

#Preview {
    LoaderAnimation()
}

