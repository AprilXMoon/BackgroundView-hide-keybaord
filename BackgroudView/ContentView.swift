//
//  ContentView.swift
//  BackgroudView
//
//  Created by April Lee on 2021/6/5.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    
    var body: some View {
        ZStack {
            
            Spacer()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .contentShape(Rectangle())
                .onTapGesture {
                    hideKeyboard()
                }
            
            ZStack {
                TextField("Name", text: $text)
                    .padding()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
