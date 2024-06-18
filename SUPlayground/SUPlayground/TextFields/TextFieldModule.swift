//
//  TextFieldModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/18/24.
//

import SwiftUI

struct TextFieldModule: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack(spacing: 24) {
            Image("team-1-800x800")
                .resizable()
                .frame(width: 100, height: 100)
            VStack {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                //                .autocorrectionDisabled()
                
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            
            Button {
                print("email is \(email)")
                print("password is \(password)")
            } label: {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 48)
                    .background(.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    TextFieldModule()
}
