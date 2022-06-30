//
//  musicViewController.swift
//  productivePuppies
//
//  Created by Maryam Noori on 6/30/22.
//

import UIKit
import WebKit

class musicViewController: UIViewController {

    
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let spotifyURL = URL(string: "https://open.spotify.com")
        myWebView.load(URLRequest(url:spotifyURL!))
    }
   
    
    

}



