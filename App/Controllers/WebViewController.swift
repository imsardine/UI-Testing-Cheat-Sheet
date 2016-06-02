//
//  WebViewController.swift
//  UI Testing Cheat Sheet
//
//  Created by Joe Masilotti on 9/7/15.
//  Copyright © 2015 Masilotti.com. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet var viewContainer: UIView!
    var webView: WKWebView?

    override func loadView() {
        super.loadView()

        self.webView = WKWebView()
        self.view = self.webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL(string: "https://en.wikipedia.org/wiki/Volleyball")
        let request = NSURLRequest(URL: url!)
        self.webView!.loadRequest(request)
    }

    @IBAction func doneButtonTapped(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
