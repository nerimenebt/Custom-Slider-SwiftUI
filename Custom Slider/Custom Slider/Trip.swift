//
//  Trip.swift
//  Custom Slider
//
//  Created by Nerimene on 26/5/2021.
//

import SwiftUI

struct Trip: Identifiable, Hashable {
    
    var id = UUID().uuidString
    var image: String
    var title: String
    var country: String
}

var trips = [Trip(image: "p1", title: "Monastir", country: "Monastir"),
             Trip(image: "p2", title: "Hammamet", country: "Hammamet"),
             Trip(image: "p3", title: "Bizerte", country: "Bizerte"),
             Trip(image: "p4", title: "Sidi BouSaid", country: "Tunis"),
             Trip(image: "p7", title: "Cap Zbib", country: "Bizerte"),
             Trip(image: "p5", title: "Tataouine", country: "Sud Tunisien"),
             Trip(image: "p11", title: "Hammamet", country: "Hammamet"),
             Trip(image: "p8", title: "Porto Farina", country: "Bizerte"),
             Trip(image: "p10", title: "La Badira", country: "Hammamet"),
             Trip(image: "p9", title: "Coco Beach", country: "Bizerte"),
             Trip(image: "p12", title: "Amphithéâtre El Jem", country: "Mehdia"),
             Trip(image: "p14", title: "Bizerte", country: "Bizerte"),
             Trip(image: "p17", title: "La Badira", country: "Hammamet"),
             Trip(image: "p18", title: "Café des délices", country: "Tunis"),
             Trip(image: "p19", title: "Sidi Ali el Mekki", country: "Bizerte"),
             Trip(image: "p20", title: "Sidi BouSaid", country: "Tunis"),
             Trip(image: "p21", title: "Matmata", country: "Sud Tunisien"),
             Trip(image: "p22", title: "Rafraf", country: "Bizerte"),
             Trip(image: "p23", title: "Carthage", country: "Tunis"),
             Trip(image: "p26", title: "Dougga", country: "Béja"),]

