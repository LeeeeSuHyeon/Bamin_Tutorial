//
//  ViewController.swift
//  Bamin_tutorial
//
//  Created by 이수현 on 2022/12/15.
//
import SwiftUI
import UIKit
import Alamofire

class ViewController: UIViewController {


  

    
        
    @IBAction func delivery1Button(_ sender: UIButton) {
        let delivery1VC = storyboard?.instantiateViewController(withIdentifier: "delivery1VC") //UIViewController 리턴
        delivery1VC?.modalPresentationStyle = .fullScreen // 전체 화면 
        delivery1VC?.modalTransitionStyle = .coverVertical
        present(delivery1VC!, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.hhjhuihu
        
    }


}

