//
//  Scrolling.swift
//  VacationInVegas
//
//  Created by Karla Miriam Dos santos Goncalves on 03/10/24.
//

import SwiftUI

struct Scrolling: View {
    var body: some View {
        ScrollView{
            VStack{
                ScrollImage(image: "bellagio")
                ScrollImage(image: "excalibur")
                ScrollImage(image: "luxor")
                ScrollImage(image: "paris")
                ScrollImage(image: "treasureisland")
                ScrollImage(image: "stratosphere")
                
            }
            .padding()
        }
    }
}

#Preview {
    Scrolling()
}
