//
//  PopVC.swift
//  PixcelCity
//
//  Created by tolga iskender on 7.08.2018.
//  Copyright © 2018 tolga iskender. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {
    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    func initData(forImage image: UIImage)
    {
        self.passedImage = image
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()
    }
    func addDoubleTap()
    {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(doubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    @objc func doubleTapped()
    {
        dismiss(animated: true, completion: nil)
    }

  

}
