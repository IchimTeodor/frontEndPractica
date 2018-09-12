//
//  HealthEvolutionViewController.swift
//  PatientApp
//
//  Created by Practica on 9/7/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import UIKit
import WebKit

class HealthEvolutionViewController: UIViewController, WKUIDelegate, WKNavigationDelegate{
    
    @IBOutlet weak var webView: WKWebView!
    var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        super.viewDidLoad()
        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        webView.uiDelegate = self
        webView.navigationDelegate = self
        self.view.addSubview(webView)
        
        activityIndicator = UIActivityIndicatorView()
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        
        self.view.addSubview(activityIndicator)
        let url = URL(string: "https://www.youtube.com/watch?v=695PN9xaEhs")
        webView.load(URLRequest(url: url!))
        webView.navigationDelegate = self
        webView.isUserInteractionEnabled = true
        
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
    }
    
    func showActivityIndicator(show: Bool){
        if show{
            activityIndicator.startAnimating()
        }
        else{
            activityIndicator.stopAnimating()
        }
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        showActivityIndicator(show: false)
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        showActivityIndicator(show: true)
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        showActivityIndicator(show: false)
    }


}
