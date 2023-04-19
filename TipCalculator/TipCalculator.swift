//
//  ContentView.swift
//  TipCalculator
//
//  Created by Ayman Hanif on 17/04/2023.
//

import SwiftUI

struct TipCalculator: View {
   
    @State var billString = ""
    @State var payeesString = ""
    @State var tipPercentage:Double = 0

    
    
    var body: some View {
        VStack {
            Text("Enter Bill Amount")
                .font(.title)
            
            TextField("Enter bill amount", text: $billString)
                .font(.callout)
                .padding()
                .frame(maxWidth: 300)
                .cornerRadius(40)
            
            TextField("Enter number of payees", text: $payeesString)
                .font(.callout)
                .padding()
                .frame(maxWidth: 300)
                .cornerRadius(40)
            
            Text("Select Tip %")
                .padding()
            
            Slider(value: $tipPercentage, in: 0...100, step: 1)
            Text("\(Int(tipPercentage))%")
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TipCalculator()
    }
}
