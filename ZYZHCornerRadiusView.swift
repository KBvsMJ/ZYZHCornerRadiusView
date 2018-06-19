//
//  ZYZHCornerRadiusView.swift
//  zhongyezhonghui
//
//  Created by zyjf on 2018/6/1.
//  Copyright © 2018年 com.zonghuidai. All rights reserved.
//

import UIKit
@IBDesignable
class ZYZHCornerRadiusView: UIView {

   
    var combineCorner = UIRectCorner.init(rawValue: 0)
    var radius:CGFloat = 0.0
    /**
     * 设置四个方向圆角弧度
     */
    @IBInspectable var cornerRadius:CGFloat = 0.0{
        didSet{
            radius = cornerRadius
        }
    }
    /**
     * 左上圆角
     */
    @IBInspectable var leftTopCorner:Bool = false{
        didSet{
            if leftTopCorner {
                combineCorner =  UIRectCorner(rawValue: combineCorner.rawValue | UIRectCorner.topLeft.rawValue)
            }
            
           
        }
    }
    /**
     * 左下圆角
     */
    @IBInspectable var LeftBottomCorner:Bool = false{
        didSet{
            if LeftBottomCorner {
                 combineCorner = UIRectCorner(rawValue: combineCorner.rawValue | UIRectCorner.bottomLeft.rawValue)
            }
            
        }
    }
    /**
     * 右上圆角
     */
    @IBInspectable var rightTopCorner:Bool = false{
        didSet{
            if rightTopCorner{
                combineCorner = UIRectCorner(rawValue: combineCorner.rawValue | UIRectCorner.topRight.rawValue)
            }
            
        }
    }
    /**
     * 右下圆角
     */
    @IBInspectable var rightBottomCorner:Bool = false{
        didSet{
            if rightBottomCorner{
                combineCorner = UIRectCorner(rawValue: combineCorner.rawValue | UIRectCorner.bottomRight.rawValue)

            }
            
        }
    }
    
    
    override func draw(_ rect: CGRect) {
      
       
        let bpath = UIBezierPath.init(roundedRect: self.bounds, byRoundingCorners: combineCorner, cornerRadii: CGSize(width: radius, height: radius))
        let shapeLayer = CAShapeLayer.init()
        shapeLayer.path = bpath.cgPath
        self.layer.mask = shapeLayer
        
    }
    
}
