//
//  NoScrollCollectionView.swift
//  iOSViews
//
//  Created by CtanLI on 2019-06-29.
//

import Foundation
import UIKit

class NoScrollCollectionView: UICollectionView {
    override var contentSize: CGSize {
        didSet {
            self.invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)
    }
}
