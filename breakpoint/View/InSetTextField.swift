//
//  InSetTextField.swift
//  breakpoint
//
//  Created by Yunus Emre ARSLAN on 14.03.2020.
//  Copyright © 2020 Yunus Emre ARSLAN. All rights reserved.
//

import UIKit

class InSetTextField: UITextField {

    private var textRectOffSet : CGFloat = 20
    private var padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    
    override func awakeFromNib() {
        setupView()
        super.awakeFromNib()
    }
    
 /*   override func textRect(forBounds bounds: CGRect) -> CGRect {
    
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
    
    }
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        
    } */
    
    func setupView(){
        let placeholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor:UIColor.white])
        self.attributedPlaceholder = placeholder
    }
}
