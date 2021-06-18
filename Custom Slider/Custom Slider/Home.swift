//
//  Home.swift
//  Custom Slider
//
//  Created by Nerimene on 26/5/2021.
//

import SwiftUI

struct Home: View {
    
    @State var selectedTab: Trip = trips[0]
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        ZStack {
            GeometryReader{proxy in
                let frame = proxy.frame(in: .global)
                Image(selectedTab.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(0)
                    .opacity(0.5)
                    .frame(width: frame.width, height: frame.height, alignment: .center)
            }.ignoresSafeArea()
            VStack {
                Text("Let's Visit")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                
                Text("Tunisia 🇹🇳")
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                    .shadow(radius: 5)
                
                VStack {
                    GeometryReader{ proxy in
                        let frame = proxy.frame(in: .global)
                        TabView(selection: $selectedTab) {
                            ForEach(trips) { trip in
                                Image(trip.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(0)
                                    .frame(width: frame.width - 10, height: frame.height, alignment: .center)
                                    .tag(trip)
                            }
                        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    }.frame(height: UIScreen.main.bounds.height / 2.2)
                    Text(selectedTab.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                        .padding(.bottom, 18)
                        .multilineTextAlignment(.center)
                    
                    PagerControl(maxPage: trips.count, currentPage: getIndex())
                }.padding(.top)
                .padding(.horizontal, 10)
                .padding(.bottom, 5)
                .background(Color.white.clipShape(CustomShape()).cornerRadius(10))
                .padding(.horizontal, 10)
                
                Button(action: {}, label: {
                    Text(selectedTab.country)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical, 18)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }).padding(.top, 30)
                .padding(.horizontal)
            }.padding()
        }
    }
    
    func getIndex() -> Int {
        let index = trips.firstIndex { (trip) -> Bool in
            return selectedTab.id == trip.id
        } ?? 0
        return index
    }
}

