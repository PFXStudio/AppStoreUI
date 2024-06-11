//
//  ImagesModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/2/24.
//

import SwiftUI

struct ImagesModule: View {
    var body: some View {
        Image(systemName: "heart.circle.fill")
            .resizable()
            .foregroundColor(.pink)
//            .font(.largeTitle)
//            .imageScale(.small)
            .frame(width: 100, height: 100)
        Image("team-1-800x800")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
    }
}

#Preview {
    ImagesModule()
}
