//
//  learning_swiftApp.swift
//  learning-swift
//
//  Created by Mac mini ọp Alexcao on 30/12/24.
//

import SwiftUI

@main
struct learning_swiftApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
