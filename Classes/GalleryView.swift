//
//  GalleryView.swift
//
//  Created by AbdoFoda on 9/20/18.
//  Copyright © 2018 AbdoFoda. All rights reserved.
//

import Foundation
import UIKit

class GalleryView : UIView  {
    
    private var images = [UIImage]() {
        didSet {
            setNeedsDisplay()
        }
    }
    func initialize(with images:[UIImage]){
        self.images = images
    }
    
    override func didMoveToSuperview() {
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeToLeft))
        leftSwipe.direction = .left
        self.addGestureRecognizer(leftSwipe)
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeToRight))
        rightSwipe.direction = .right
        self.addGestureRecognizer(rightSwipe)
    }
    
    
    @objc private  func swipeToLeft() {
        curIdx = (curIdx + 1) % images.count
    }
    @objc private func swipeToRight() {
        curIdx -= 1
        if curIdx == -1 {
            curIdx = images.count - 1
        }
    }
    
    private var curIdx = 0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    func addToLast(image : UIImage) {
        images.append(image)
    }
    
    func clearContent() {
        images.removeAll()
    }
    
    override func draw(_ rect: CGRect) {
        if images.count == 1 {
            images[curIdx].draw(in: bounds)
        }else if images.count > 1{
            var orderedImages = [images[curIdx]]
            var loopIdx = (curIdx + 1) % images.count
            while(loopIdx != curIdx) {
                orderedImages.append(images[loopIdx])
                loopIdx = (loopIdx + 1) % images.count
            }
            orderedImages.reverse()
            
            // math is here
            let dxRatioPerImage : CGFloat = (0.1 * bounds.width) / CGFloat(images.count - 1)
            let n :CGFloat = CGFloat(images.count)
            var dx = dxRatioPerImage * n
            var dy = pow(1/20, n) * bounds.height
            var curHeight = pow(9/10, n) * bounds.height
            let frame = bounds.collapse(widthRatio: 0.9)
            for image in orderedImages {
                curHeight *= (10/9) 
                dy *= (20/1)
                dx -= dxRatioPerImage
                let nextHeight = curHeight * (10/9)
                image.draw(in: frame.offsetBy(dx: dx, dy: 0.5 * (bounds.height-nextHeight) + (1/20)*nextHeight ).collapse(newHeight: curHeight))
            }
        }
    }
    
    
}


extension CGRect {
    
    func collapse(widthRatio : CGFloat) -> CGRect {
        let newWidth = widthRatio * self.width
        return CGRect(origin: self.origin, size: CGSize(width: newWidth, height: self.height))
    }
    
    func collapse(newHeight : CGFloat) -> CGRect {
        return CGRect(origin: self.origin, size: CGSize(width: self.width, height: newHeight))
    }
}
