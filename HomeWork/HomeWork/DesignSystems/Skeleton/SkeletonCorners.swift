//
//  SkeletonCorners.swift
//  HomeWork
//
//  Created by nyon on 7/28/24.
//

import Foundation

struct SkeletonCorners {
    var leftTop: CGFloat
    var rightTop: CGFloat
    var leftBottom: CGFloat
    var rightBottom: CGFloat
    
    init(leftTop: CGFloat = 0,
         rightTop: CGFloat = 0,
         leftBottom: CGFloat = 0,
         rightBottom: CGFloat = 0) {
        self.leftTop = leftTop
        self.rightTop = rightTop
        self.leftBottom = leftBottom
        self.rightBottom = rightBottom
    }
    
    init(all: CGFloat) {
        self.leftTop = all
        self.rightTop = all
        self.leftBottom = all
        self.rightBottom = all
    }
}

extension SkeletonCorners {
    static let zero = SkeletonCorners()
    static let extraSmall = SkeletonCorners(all: 4)
    static let xsmall = SkeletonCorners(all: 8)
    static let small = SkeletonCorners(all: 10)
    static let medium = SkeletonCorners(all: 12)
    static let large = SkeletonCorners(all: 16)
    static let xlarge = SkeletonCorners(all: 20)
    static let infinity = SkeletonCorners(all: .infinity)
    
    var max: CGFloat {
        let maxValue = Swift.max(
            leftTop,
            rightTop,
            leftBottom,
            rightBottom
        )
        return maxValue
    }
}
