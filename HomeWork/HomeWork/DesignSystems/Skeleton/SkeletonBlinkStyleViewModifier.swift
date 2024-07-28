//
//  SkeletonBlinkStyleViewModifier.swift
//  HomeWork
//
//  Created by nyon on 7/28/24.
//

import SwiftUI

struct SkeletonBlinkStyleViewModifier: ViewModifier {
    var isActive: Bool
    private var theme: SkeletonThemeable
    private var colorTheme: SkeletonColorThemeable
    @State private var animating = false
    init(isActive: Bool, theme: SkeletonThemeable, colorTheme: SkeletonColorThemeable, animating: Bool = false) {
        self.isActive = isActive
        self.theme = theme
        self.colorTheme = colorTheme
        self.animating = animating
    }
    
    func body(content: Content) -> some View {
        content
            .overlay(backgroundOverlay())
            .overlay(shapeOverlay().opacity(isActive && animating ? 0.3 : 1))
            .animation(isActive ?
                .easeOut(duration: 1)
                .repeatForever(autoreverses: true) : nil, value: animating)
            .id(isActive)
            .onAppear {
                if isActive {
                    animating.toggle()
                }
            }
            .onChange(of: isActive) { isActiveValue in
                if isActiveValue {
                    animating.toggle()
                }
            }
    }
    
    private func shapeOverlay() -> some View {
        Group {
            if let shape = theme.skeletonShape() {
                shape.fill(colorTheme.backgroundColor())
            }
        }
    }
    private func backgroundOverlay() -> some View {
        Group {
            if let shape = theme.skeletonShape() {
                shape.fill(.defaultBackground)
            }
        }
    }
}
