//
//  CategoryHome.swift
//  learning-swift
//
//  Created by Cao Việt Đức on 31/12/24.
//

import SwiftUI

struct CategoryItem: View {
    let title: String
    var body: some View {
        VStack(
            alignment: .center
        ) {
            Image("book")
            Text(title)
        }
    }
}

struct CategoryHome: View {
    let categoryList: [String] = [
        "SwiftUI",
        "Combine",
        "UIKit",
        "CoreData",
        "CoreLocation",
        "Networking",
    ]
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(categoryList, id: \.self) { category in
                    NavigationLink {
                        Text(category)
                    } label: {
                        CategoryItem(title: category)
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                }
            }
            .navigationTitle("Categories")
        } detail: {
            Text("Select a category")
        }
    }
}

#Preview {
    CategoryHome()
}
