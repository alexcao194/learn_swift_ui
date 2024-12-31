//
//  learning_swiftApp.swift
//  learning-swift
//
//  Created by Mac mini ọp Alexcao on 30/12/24.
//

import SwiftUI

@main
struct learning_swiftApp: App {
    
    var body: some Scene {
        WindowGroup {
            AppNe()
        }
    }
}

struct AppNe: View {
    @State private var modelData = ModelData()
    var body: some View {
        TabView {
            ContentView()
                .tag("content view")
            CategoryHome()
                .tag("category home")
        }
    }
}


#Preview {
    let previewModelData = ModelData()
    TabView {
        ContentView()
            .environment(previewModelData)
            .tabItem {
                Label("Bullshit", systemImage: "star")
            }
            .tag("content view")
        CategoryHome()
            .tabItem {
                Label("Category", systemImage: "book")
            }
            .tag("category home")
    }
}
