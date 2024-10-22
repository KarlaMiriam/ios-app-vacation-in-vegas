//
//  VegasChart.swift
//  VacationInVegas
//
//  Created by Karla Miriam Dos santos Goncalves on 04/10/24.
//

import SwiftUI
import Charts

struct SampleRating {
    let place: String
    let rating: Int
    
    static let ratings: [SampleRating] = [
        SampleRating(place: "Bellagio", rating: 88),
        SampleRating(place: "Paris", rating: 75),
        SampleRating(place: "TreasureIsland", rating: 33),
        SampleRating(place: "Excalibur", rating: 99),
        
    ]
}

struct VegasChart: View {
    var body: some View {
        Chart(SampleRating.ratings, id: \.place) {
            rating in
            SectorMark(angle: .value("Ratings",
                                     rating.rating), innerRadius:  .ratio (0.50),
                       angularInset: 1)
                .cornerRadius(7)
                .foregroundStyle(by: .value("Place" ,
                rating.place))
        }
        .padding()
        .frame(height: 500)
    }
}

#Preview {
    VegasChart()
}
