//
//  SliderControl.swift
//  transform
//
//  Created by Lawrence Herman on 8/25/17.
//  Copyright © 2017 Lawrence Herman. All rights reserved.
//

import UIKit

class SliderControl: UIView {

    
    
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var positionXSlider: UISlider!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        Bundle.main.loadNibNamed("Sliders", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  
    
}
