//
//  ContentView.swift
//  GitLearning
//
//  Created by Eloy Hernandez on 2/28/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet = false
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: {
                    DetailView()
                }, label: {
                    Text("Git Learning App")
                })
                Button (action: {
                    showSheet = true
                }, label: {
                Text("Show sheet to true")
                })
            }
            .padding()
            .sheet(isPresented: $showSheet,
                content: {
                DetailView()
            })
        }
    }
}

#Preview {
    ContentView()
}
