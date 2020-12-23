//
//  LocalWebviewViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/23/20.
//

import UIKit
import WebKit

class LocalWebviewViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    let htmlString = """
    <html>
    <pre><code class="language-swift">import UIKit
    import WebKit

    class DetailViewController: UIViewController {
        var webView: WKWebView!
        var detailItem: Petition?

        override func loadView() {
            webView = WKWebView()
            view = webView
        }

        override func viewDidLoad() {
            super.viewDidLoad()
        }
    }</code></pre>
    </html>
    """
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webview.loadHTMLString(htmlString, baseURL: nil)
        webview.scrollView.isScrollEnabled = true
    }

}
