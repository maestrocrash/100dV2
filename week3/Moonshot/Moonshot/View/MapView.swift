//
//  MapView.swift
//  Moonshot
//
//  Created by MICHAIL SHAKHVOROSTOV on 10.11.2023.
//

import MapKit
import SwiftUI


struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }

    private var region: MKCoordinateRegion {
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 28.58_500, longitude: -80.65_100),
                           span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    }
}

#Preview {
    MapView()
}
