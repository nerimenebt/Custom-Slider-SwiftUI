//
//  PagerControl.swift
//  Custom Slider
//
//  Created by Nerimene on 26/5/2021.
//

import SwiftUI

struct PagerControl: UIViewRepresentable {
    
    var maxPage: Int
    var currentPage: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let pageControl = UIPageControl()
        pageControl.backgroundStyle = .minimal
        pageControl.currentPage = currentPage
        pageControl.numberOfPages = maxPage
        return pageControl
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
}

