//
//  ToastConfiguration.swift
//  Toast
//
//  Created by Bastiaan Jansen on 28/06/2021.
//

import Foundation
import UIKit

public struct ToastConfiguration {
    public let autoHide: Bool
    public let displayTime: TimeInterval
    public let swipeUpToHide: Bool
    public let animationTime: TimeInterval
    public let removeFromView: Bool
    
    public let onTap: ((Toast) -> Void)?
    
    public let view: UIView?
    
    
    /// Creates a new Toast configuration object.
    /// - Parameters:
    ///   - autoHide: When set to true, the toast will automatically close itself after display time has elapsed.
    ///   - displayTime: The time the toast will be displayed before it will close when autoHide set to true.
    ///   - swipeUpToHide: When set to true, the user can swipe up on the toast view to close it.
    ///   - animationTime:Duration of the animation
    ///   - removeFromView: When set to true, the toast view will automatically be removed from the super view when closed.
    ///   - attachTo: The view on which the toast view will be attached.
    ///   - onTap: A function which will be invoked when the user taps on the toast view.
    public init(
        autoHide: Bool = true,
        displayTime: TimeInterval = 4,
        swipeUpToHide: Bool = true,
        animationTime: TimeInterval = 0.2,
        removeFromView: Bool = false,
        attachTo view: UIView? = nil,
        onTap: ((Toast) -> Void)? = nil
    ) {
        self.autoHide = autoHide
        self.displayTime = displayTime
        self.swipeUpToHide = swipeUpToHide
        self.animationTime = animationTime
        self.removeFromView = removeFromView
        self.view = view
        self.onTap = onTap
    }
}
