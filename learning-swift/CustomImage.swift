//
//  CustomImage.swift
//  learning-swift
//
//  Created by Mac mini ọp Alexcao on 30/12/24.
//

import SwiftUI

struct CustomImage: View {
    var body: some View {
        Image("book")
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7.0)
    }
}

#Preview {
    CustomImage()
}
