//
//  ViewController.swift
//  MaskTest
//
//  Created by Lidiomar Fernando dos Santos Machado on 14/06/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.insertSubview(backgroundView(), at: 0)
    }
    
    private func backgroundView() -> UIView {
        let backgroundViewHeight: CGFloat = 260
        let backgroundViewWidth = UIScreen.main.bounds.width
        
        let purpleView = UIView(frame: CGRect(x: 0, y: 0, width: backgroundViewWidth, height: backgroundViewHeight))
        purpleView.backgroundColor = UIColor(red: 66/255, green: 46/255, blue: 112/255, alpha: 1)
            
        let whiteView = UIView(frame: CGRect(x: 0, y: 0, width: backgroundViewWidth, height: backgroundViewHeight))
        whiteView.backgroundColor = .white
        
        let maskView = UIView(frame: CGRect(x: 0, y: backgroundViewHeight/2, width: backgroundViewWidth, height: backgroundViewHeight))
        maskView.backgroundColor = .blue
        maskView.layer.cornerRadius = backgroundViewHeight/2
        whiteView.mask = maskView
        
        purpleView.addSubview(whiteView)
        return purpleView
    }


}

