//
//  Place.swift
//  VacationInVegas
//
//  Created by Karla Miriam Dos santos Goncalves on 03/10/24.
//

import SwiftData
import SwiftUI
import MapKit

@Model
class Place {
    
    @Attribute(.unique)
    var name: String
    var latitude: Double
    var longitude: Double
    var interested: Bool
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var image: Image {
        Image(name.lowercased().replacingOccurrences(of:  " ", with: " "))
    }
    
    init(name: String, latitude: Double, longitude: Double, interested: Bool) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.interested = interested
    }
    
    @MainActor
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: Place.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        for place in previewPlaces {
            container.mainContext.insert(place)
        }
        return container
    }
    
    static var previewPlaces: [Place] {
        [
            Place(name: "Bellagio", latitude: 36.119, longitude: -115.1765, interested: true),
            Place(name: "Paris", latitude: 36.1125, longitude: -115.707, interested: true),
            Place(name: "TreasureIsland", latitude: 36.1947, longitude: -115.1721, interested: false),
            Place(name: "Stratosphere", latitude: 36.1475, longitude: -115.1566, interested: false),
            Place(name: "Luxor", latitude: 36.0955, longitude: -115.1761, interested: false),
            Place(name: "Excalibur", latitude: 36.0988, longitude: -115.1754, interested: true),
        ]
    }
    
}


