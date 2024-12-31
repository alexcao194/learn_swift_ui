//
//  ContentView.swift
//  learning-swift
//
//  Created by Mac mini ọp Alexcao on 30/12/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(ModelData.self) var modelData
    @State private var onlyShowHehe = false
    
    var filteredImages: [String] {
        modelData.images.filter{ image in
            image.starts(with: "hehe") || !onlyShowHehe
        }
    }
    
    var body: some View {
        VStack {
            Toggle(isOn: $onlyShowHehe) {
                Text("Show Only Hehe")
            }
            NavigationSplitView {
                List(filteredImages, id: \.self) { image in
                    NavigationLink {
                        CustomImage()
                    } label: {
                        Text(image)
                    }
                }
                .animation(.default, value: filteredImages)
                .navigationTitle("Hehe Routes")
            } detail: {
                Text("Select an item")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
