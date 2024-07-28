//
//  View+Skeleton.swift
//  HomeWork
//
//  Created by nyon on 7/28/24.
//

import SwiftUI

extension View {
    func skeleton(type: SkeletonThemeTypes = .gray,
        variant: SkeletonVariant = .blink,
        state: SkeletonState = .loading,
        shape: SkeletonShapeType = .round
    ) -> some View {
        let isAnimationActive: Bool = {
            switch state {
            case .loading: return true
            case .idle: return false
            }
        }()
        
        let theme: SkeletonThemeable = switch type {
        case .gray:
            SkeletonGrayTheme(state: state, shapeType: shape)
        case .pink:
            SkeletonPinkTheme(state: state, shapeType: shape)
        }
        
        let colorTheme: SkeletonColorThemeable = switch type {
        case .gray:
            SkeletonGrayColorTheme(state: state)
        case .pink:
            SkeletonPinkColorTheme(state: state)
        }
        
        switch variant {
        case .blink:
            let blinkStyle = SkeletonBlinkStyleViewModifier(
                isActive: isAnimationActive,
                theme: theme,
                colorTheme: colorTheme
            )
            return self
                .modifier(blinkStyle)
                .asAnyView()
            
        case .shining:
            let shiningStyle = SkeletonShiningStyleViewModifiver(
                isActive: isAnimationActive,
                theme: theme,
                colorTheme: colorTheme
            )
            return self
                .modifier(shiningStyle)
                .asAnyView()
        }
    }
}
