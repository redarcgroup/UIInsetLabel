//
//  UIInsetLabel.swift - Swift 3.0
//  Copyright © 2016 RedArc. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy 
//  of this software and associated documentation files (the "Software"), to deal 
//  in the Software without restriction, including without limitation the rights 
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
//  copies of the Software, and to permit persons to whom the Software is 
//  furnished to do so, subject to the following conditions:

//  The above copyright notice and this permission notice shall be included in 
//  all copies or substantial portions of the Software.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
//  THE SOFTWARE.

import Foundation
import UIKit

class UIInsetLabel: UILabel
{
	var paddingInsets: UIEdgeInsets?
	
	override func drawText(in rect: CGRect)
	{
		guard let insets: UIEdgeInsets = paddingInsets else
		{
			super.drawText(in: rect)
			return
		}
		super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
	}
	
	override var intrinsicContentSize : CGSize
	{
		get
		{
			let superViewContentSize: CGSize = super.intrinsicContentSize
		
			guard let insets: UIEdgeInsets = paddingInsets else
			{
				return (superViewContentSize)
			}
			let insetWidth: CGFloat = insets.left + insets.right
			let insetHeight: CGFloat = insets.top + insets.bottom
			return (CGSize(width: (superViewContentSize.width + insetWidth), height: (superViewContentSize.height + insetHeight)))
		}
	}
	
	var RectforPopover: CGRect
	{
		get
		{
			return(CGRect(x: 0.0, y: 0.0, width: super.frame.width, height: super.frame.height))
		}
	}
}
