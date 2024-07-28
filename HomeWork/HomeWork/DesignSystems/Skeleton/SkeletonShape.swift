//
//  SkeletonShape.swift
//  HomeWork
//
//  Created by nyon on 7/28/24.
//

import SwiftUI

enum SkeletonShapeType: String, CaseIterable {
    case none, round, square, pill, circle
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct SkeletonShape: Shape, Sendable {
    private let pathMaker: @Sendable (CGRect) -> Path

    init<S: Shape>(_ shape: S) where S: Sendable {
        self.pathMaker = { rect in
            shape.path(in: rect)
        }
    }

    func path(in rect: CGRect) -> Path {
        pathMaker(rect)
    }
}

extension Shape {
    func asSkeletonShape() -> SkeletonShape {
        SkeletonShape(self)
    }
}
