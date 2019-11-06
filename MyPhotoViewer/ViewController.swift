//
//  ViewController.swift
//  MyPhotoViewer
//
//  Created by Webcash on 2019/11/04.
//  Copyright © 2019 GMS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var index : Int = 0
    var imgList = ["IMAGE_01.jpeg", "IMAGE_02.jpeg", "IMAGE_03.jpeg"] // 확장자명 주의!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var btnPrevious: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var lblImgName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: imgList[index])
        lblImgName.text = imgList[index]
    }

    @IBAction func btnPrevious(_ sender: UIButton) {
        if index == 0 {
            let indexZeroAlert = UIAlertController(title: "경고", message: "첫번째 이미지입니다.", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            indexZeroAlert.addAction(onAction)
            present(indexZeroAlert, animated: true, completion: nil)
        } else {
            index -= 1
            imageView.image = UIImage(named: imgList[index])
            
        }
        lblImgName.text = imgList[index]
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        if index == imgList.count - 1 {
            let indexOverflowAlert = UIAlertController(title: "경고", message: "마지막 이미지입니다.", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            indexOverflowAlert.addAction(onAction)
            present(indexOverflowAlert, animated: true, completion: nil)
        } else {
            index += 1
            imageView.image = UIImage(named: imgList[index])
        }
        lblImgName.text = imgList[index]
    }
    
}

