/*
 UIWebView (Deprecated) to WKWebView
 */
import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a WKWebView
        webView = WKWebView(frame: view.bounds)
        webView.navigationDelegate = self
        view.addSubview(webView)

        // Load a web page
        if let url = URL(string: "https://www.google.com") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }

    // Implement WKNavigationDelegate methods
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        // Called when navigation starts
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        // Called when navigation is completed
    }

    // Handle other navigation events as needed
}

