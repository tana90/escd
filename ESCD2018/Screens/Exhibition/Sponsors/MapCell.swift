//
//  MapCell.swift
//  ESCD2018
//
//  Created by Tudor Ana on 5/5/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class MapCell: UITableViewCell {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var mapImageView: UIImageView!
    
    func show() {
        
        scrollView.delegate = self
        
        scrollView.contentSize = (mapImageView.image?.size)!
        scrollView.setZoomScale(0.7, animated: true)
        scrollView.maximumZoomScale = 3.0
        scrollView.minimumZoomScale = 0.5
        
        adjust()
    }
    
    func adjust() {
        scrollView.setZoomScale(0.7, animated: true)
        scrollView.sizeToFit()
    }
}

extension MapCell: UIScrollViewDelegate {
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return mapImageView
    }
    
}
