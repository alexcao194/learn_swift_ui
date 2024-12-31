//
//  MapView.swift
//  learning-swift
//
//  Created by Mac mini ọp Alexcao on 30/12/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 34.011_286,
                longitude: -116.166_868
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2
            )
        )
    }
}

#Preview {
    MapView()
}
