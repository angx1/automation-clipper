//
//  ContentView.swift
//  python-automation
//
//  Created by Angel Rodriguez Moran on 13/10/24.
//


import SwiftUI

struct ContentView: View {
    @State var showResult: Bool = false
    var body: some View {
        
        /*
        Button(action: {
            PythonController()
            showResult.toggle()
        }){
            Text("Run Python Script")
        }
        
        if showResult {
            Text(String("\(PythonController())"))
        }
         
         */
        
        Text("auto-py")
            .padding(64)
    }
}
