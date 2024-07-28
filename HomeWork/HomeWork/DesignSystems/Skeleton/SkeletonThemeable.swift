//
//  SkeletonThemeable.swift
//  HomeWork
//
//  Created by nyon on 7/28/24.
//

import SwiftUI

protocol SkeletonThemeable {
    func skeletonCornered() -> SkeletonCorners
    func skeletonShape() -> SkeletonShape?
}

protocol SkeletonColorThemeable {
    func backgroundColor() -> Color
}
