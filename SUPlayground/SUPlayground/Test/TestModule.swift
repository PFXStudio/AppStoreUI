//
//  TestModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/2/24.
//

import SwiftUI

struct TestModule: View {
    var body: some View {
        Text("Hello, Bootcamp!! Created by AsGuard on 6/2/24")
            .font(.largeTitle)
            .foregroundStyle(.blue)
            .fontWeight(.semibold)
            .multilineTextAlignment(.trailing)
            .italic()
            .underline()
    }
}

#Preview {
    TestModule()
}
