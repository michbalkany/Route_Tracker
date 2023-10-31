//
//  MapViewDemo.swift
//  routeTracker
//
//  Created by Micah Njeru on 31/10/2023.
//

import SwiftUI
import MapKit

// We can use this view file to play around with MapKit and test out ideas
// When something works and we want to add it to the production code,
// we can copy + paste it to the production ready code

struct MapViewDemo: View {
    // The constants here are used to store the coordinate
    // locations of 3 points as a point of reference to show
    // the area covered by the points.
    // 2 points would have been sufficient but 3 looks like we're
    // trianglulating someone like in the movies 😅
    
    let surfSide = CLLocationCoordinate2D(
        latitude: 25.88162,
        longitude: -80.12294)
    
    let northBeach = CLLocationCoordinate2D(
        latitude: 25.86221,
        longitude: -80.12109)
    
    let biscaynePoint = CLLocationCoordinate2D(
        latitude: 25.86350,
        longitude: -80.13327)
    
    var body: some View {
        Map() {
            // Adding Markers of the locations (coordinates) entered above
            // We can our own images/icons or
            // use the SF Symbols as the pin marker images
            Marker("Bay Harbor Islands", systemImage: "figure.outdoor.cycle", coordinate: surfSide)
                .tint(.orange)
            Marker("North Beach", systemImage: "figure.run", coordinate: northBeach)
                .tint(.green)
            Marker("Biscayne Point", systemImage: "surfboard", coordinate: biscaynePoint)
                .tint(.blue)
        }
    }
}

#Preview {
    MapViewDemo()
}
