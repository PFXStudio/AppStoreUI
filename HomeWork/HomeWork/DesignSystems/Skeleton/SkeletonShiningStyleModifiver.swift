//
//  SkeletonShiningStyleViewModifiver.swift
//  HomeWork
//
//  Created by nyon on 7/28/24.
//

import SwiftUI

struct SkeletonShiningStyleViewModifiver: ViewModifier {
    private var isActive: Bool = false
    private var theme: SkeletonThemeable
    private var colorTheme: SkeletonColorThemeable
    @State private var gradientPosition: CGFloat = -1.0
    
    init(
        isActive: Bool,
        theme: SkeletonThemeable,
        colorTheme: SkeletonColorThemeable
    ) {
        self.isActive = isActive
        self.theme = theme
        self.colorTheme = colorTheme
    }
    
    func body(content: Content) -> some View {
        content
            .overlay(shapeOverlay())
            .overlay(gradientOverlay(content: content))
            .onAppear {
                if isActive {
                    startAnimating()
                }
            }
            .onChange(of: isActive) { isActiveValue in
                if isActiveValue {
                    startAnimating()
                } else {
                    stopAnimating()
                }
            }
    }
}

extension SkeletonShiningStyleViewModifiver {
    private func shapeOverlay() -> some View {
        Group {
            if let shape = theme.skeletonShape() {
                shape.fill(colorTheme.backgroundColor())
            }
        }
    }
    
    private func gradientOverlay(content: Content) -> some View {
        GeometryReader { geometry in
            gradient
                .scaleEffect(x: 3, y: 1)
                .offset(x: gradientPosition * geometry.size.width * 2)
                .mask(
                    maskShape(
                        content: content
                    )
                )
                .animation(
                    isActive
                    ? Animation
                        .easeInOut(duration: 2)
                        .repeatForever(autoreverses: false)
                    : nil,
                    value: gradientPosition
                )
        }
    }
    
    private func startAnimating() {
        gradientPosition = 1.5
    }
    
    private func stopAnimating() {
        gradientPosition = -1.0
    }

    private func maskShape(
        content: Content
    ) -> some View {
        Group {
            if let shape = theme.skeletonShape() {
                shape
            } else {
                content
            }
        }
    }
    
    private var gradient: some View {
        LinearGradient(
            gradient: Gradient(
                colors: [.clear, .defaultBackground.opacity(0.6), .clear]
            ),
            startPoint: .leading,
            endPoint: .trailing
        )
    }
}
