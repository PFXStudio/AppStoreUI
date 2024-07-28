//
//  SkeletonPinkTheme.swift
//  HomeWork
//
//  Created by nyon on 7/28/24.
//

import SwiftUI

struct SkeletonPinkTheme: SkeletonThemeable {
    private let state: SkeletonState
    private let shapeType: SkeletonShapeType
    init(state: SkeletonState, shapeType: SkeletonShapeType) {
        self.state = state
        self.shapeType = shapeType
    }
    
    func skeletonCornered() -> SkeletonCorners {
        switch shapeType {
        case .none: return .zero
        case .round: return .large
        case .square: return .extraSmall
        case .pill: return .zero
        case .circle: return .zero
        }
    }
    
    func skeletonShape() -> SkeletonShape? {
        if state == .idle {
            return nil
        }
        
        switch shapeType {
        case .none:
            return nil
            
        case .round, .square:
            let offset = skeletonCornered()
            return RoundedRectangle(cornerRadius: offset.max).asSkeletonShape()
            
        case .pill:
            return Capsule().asSkeletonShape()
            
        case .circle:
            return Circle().asSkeletonShape()
        }
    }
}

struct SkeletonPinkColorTheme: SkeletonColorThemeable {
    private let state: SkeletonState
    
    init(state: SkeletonState) {
        self.state = state
    }
    
    func backgroundColor() -> Color {
        switch state {
        case .loading: return .pink02
        case .idle: return .clear
        }
    }
}
