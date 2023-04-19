//
//  ContentView.swift
//  TipCalculator
//
//  Created by Ayman Hanif on 17/04/2023.
//

import SwiftUI

struct TipCalculator: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TipCalculator()
    }
}
