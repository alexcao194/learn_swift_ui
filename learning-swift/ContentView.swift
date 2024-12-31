//
//  ContentView.swift
//  learning-swift
//
//  Created by Mac mini ọp Alexcao on 30/12/24.
//

import SwiftUI

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        .asymmetric(
            insertion: .move(edge: .trailing).combined(with: .opacity),
            removal: .scale.combined(with: .opacity)
        )
    }
}

struct ContentView: View {
    @Environment(ModelData.self) var modelData
    @State private var onlyShowHehe = false
    @State private var showDetails = false
    
    var filteredImages: [String] {
        modelData.images.filter{ image in
            image.starts(with: "hehe") || !onlyShowHehe
        }
    }
    
    var body: some View {
        VStack {
            Button {
                withAnimation {
                    showDetails.toggle()
                }
            } label: {
                Label("Graph", systemImage: "chevron.right.circle")
                    .labelStyle(.iconOnly)
                    .imageScale(.large)
                    .rotationEffect(.degrees(showDetails ? 90 : 0))
                    .scaleEffect(showDetails ? 1.5 : 1)
            }
            .padding()
            
            if (showDetails) {
                VStack {
                    Text("What the hell you say?")
                }
                .transition(.moveAndFade)
            }
            
            NavigationSplitView {
                List {
                    Toggle(isOn: $onlyShowHehe) {
                        Text("Show Only Hehe")
                    }
                    ForEach(filteredImages, id: \.self) { image in
                        NavigationLink {
                            CustomImage()
                        } label: {
                            Text(image)
                        }
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
