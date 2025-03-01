//
//  ContentView.swift
//  GitLearning
//
//  Created by Eloy Hernandez on 2/28/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: {
                    DetailView()
                }, label: {
                    Text("Git Learning App")
                })

            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
