//
//  ContentView.swift
//  GitLearning
//
//  Created by Eloy Hernandez on 2/28/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet = false
    @State private var showNavigation = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button(action: {
                    showNavigation = true
                }, label: {
                    Text("Git Learning App")
                })
                
                Button (action: {
                    showSheet = true
                }, label: {
                Text("Show Details")
                })
            }
            .padding()
            .sheet(isPresented: $showSheet,
                content: {
                DetailView()
            })
            .navigationDestination(isPresented: $showNavigation) {
                DetailView()
            }
        }
    }
}

#Preview {
    ContentView()
}
