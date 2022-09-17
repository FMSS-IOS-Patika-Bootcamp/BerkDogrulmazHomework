//
//  WebViewController.swift
//  HomoworkBerk
//
//  Created by Berk doğrulmaz on 17.09.2022.
//

import UIKit
import WebKit


class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Webview detail
        if let url = URL.init(string: "https://www.google.com.tr") {
               let urlRequest = URLRequest.init(url: url)
             webView.load(urlRequest)
        }
    }
}
