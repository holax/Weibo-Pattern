//
//  UIView+Extension.swift
//  Weibo-Pattern
//
//  Created by Phoenix on 30/11/2016.
//  Copyright © 2016 holaux. All rights reserved.
//

import UIKit


extension UIView
{
    var x: CGFloat
    {
        get
        {
            return frame.origin.x
        }
        set
        {
            frame.origin.x = newValue
        }
    }
    
    var y: CGFloat
    {
        get
        {
            return frame.origin.y
        }
        set
        {
            frame.origin.y = newValue
        }
    }
    
    var width: CGFloat
    {
        get
        {
            return frame.size.width
        }
        set
        {
            frame.size.width = newValue
        }
    }
    
    var height: CGFloat
    {
        get
        {
            return frame.size.height
        }
        set
        {
            frame.size.height = newValue
        }
    }
    
    var size: CGSize
    {
        get
        {
            return frame.size
        }
        set
        {
            frame.size = newValue
        }
    }
    
    var centerX: CGFloat
    {
        get
        {
            return center.x
        }
        set
        {
            center.x = newValue
        }
    }
    
    var centerY: CGFloat
    {
        get
        {
            return center.y
        }
        set
        {
            center.y = newValue
        }
    }
    
}
