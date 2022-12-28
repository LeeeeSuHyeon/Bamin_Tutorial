//
//  deliver1ViewController.swift
//  Bamin_tutorial
//
//  Created by 이수현 on 2022/12/22.
//

import UIKit
import Alamofire

class deliver1ViewController: UIViewController {

    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBAction func buttonClick(_ sender: UIButton) {
//        AF.request("https://api.unsplash.com/search/photos")
//          .response{
//              response in debugPrint(response)
//        }
    
    
        let url = API.Base_URL + "search/photos"
        
        guard let userInput = self.searchTextField.text else {return}
        
        let queryParam = ["query" : userInput, "client_id" : API.CLIENT_ID]
        
//        AF.request(url, method: .get, parameters: queryParam).responseJSON(completionHandler: {
//            response in debugPrint(response)
//        })
        
        MyAlamofireManager
            .shared
            .session
            .request(url)
            .responseJSON(completionHandler: {response in
                debugPrint(response)
            })
    }
    
    @IBAction func homeButton(_ sender: UIButton) {
        presentingViewController?.dismiss(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
