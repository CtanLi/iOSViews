//
//  NoScrollCollectionView.swift
//  iOSViews
//
//  Created by CtanLI on 2019-06-29.
//

import Foundation
import UIKit

public class NoScrollCollectionView: UICollectionView {
    override public var contentSize: CGSize {
        didSet {
            self.invalidateIntrinsicContentSize()
        }
    }
    
    override public var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)
    }
}
