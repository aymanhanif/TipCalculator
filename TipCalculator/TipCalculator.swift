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
    
    var billAmount:Double {
        
        let bill = Double(billString) ?? 0
        let tip = bill * (Double(payeesString)! / 100)
        return Double((bill + tip) / (Double(payeesString) ?? 0))
        
    }

    
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Enter Bill Amount")
                .font(.title)
            
            TextField("Enter bill amount", text: $billString)
                .keyboardType(.decimalPad)
                .font(.callout)
                .padding()
                .frame(maxWidth: 300)
                .cornerRadius(40)
            
            TextField("Enter number of payees", text: $payeesString)
                .keyboardType(.numberPad)
                .font(.callout)
                .padding()
                .frame(maxWidth: 300)
                .cornerRadius(40)
            
            Text("Select Tip %")
                .padding()
            
            Slider(value: $tipPercentage, in: 0...100, step: 1)
            Text("\(Int(tipPercentage))%")
            
            Spacer()
            
            Text("$\(billAmount, specifier: "%.2f")")
                .font(.title)
            
            Spacer()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TipCalculator()
    }
}
