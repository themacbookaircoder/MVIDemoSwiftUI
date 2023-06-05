//
//  Constant.swift
//  MVI
//
//  Created by Kuldeep on 04/06/23.
//

import UIKit

public var screenWidth: CGFloat {
    return UIScreen.main.bounds.width
}
// Screen height.
public var screenHeight: CGFloat {
    return UIScreen.main.bounds.height
}

func widthPercentage(_ percent: CGFloat) -> CGFloat {
    return screenWidth/100 * percent
}

func heightPercentage(_ percent: CGFloat) -> CGFloat {
    return screenHeight/100 * percent
}
