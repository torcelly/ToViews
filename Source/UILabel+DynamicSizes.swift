//
//  UILabel+DynamicSizes.swift
//  ToViews
//
//  Created by Fernando Torcelly on 20/8/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import UIKit

public extension UILabel {
    
    public func widthNeeded() -> CGFloat {
        let attr : [String: Any] = [NSFontAttributeName : self.font]
        return self.widthNeeded(withAttributes: attr)
    }
    
    public func heightNeeded() -> CGFloat {
        let attr : [String: Any] = [NSFontAttributeName : self.font]
        return self.heightNeeded(withAttributes: attr)
    }
    
    public func widthNeeded(withAttributes attr: [String: Any]?) -> CGFloat {
        let constraint : CGSize = CGSize.init(width: 200000.0, height: self.frame.size.height);
        let context : NSStringDrawingContext = NSStringDrawingContext()
        
        if let string = self.text {
            let boundingBox : CGSize = string.boundingRect(with: constraint, options: .usesLineFragmentOrigin, attributes: attr, context: context).size
            return ceil(boundingBox.width);
        }
        
        return 0
    }
    
    public func heightNeeded(withAttributes attr: [String: Any]?) -> CGFloat {
        let constraint : CGSize = CGSize.init(width: self.frame.size.width, height: 200000.0)
        let context : NSStringDrawingContext = NSStringDrawingContext()
        
        if let string = self.text {
            let boundingBox : CGSize = string.boundingRect(with: constraint, options: .usesLineFragmentOrigin, attributes: attr, context: context).size
            return ceil(boundingBox.height);
        }
        
        return 0
    }
}
