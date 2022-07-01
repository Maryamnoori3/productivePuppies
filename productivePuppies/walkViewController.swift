//
//  walkViewController.swift
//  productivePuppies
//
//  Created by Gelila Solomon on 6/30/22.
//

import UIKit
import WebKit

class walkViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let youTubeURL = URL (string: "https://www.youtube.com/watch?v=Xk24DMOInnQ")
        myWebView.load (URLRequest(url:youTubeURL!))
        
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
