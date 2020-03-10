//
//  WebViewViewModel.swift
//  Wazapp
//
//  Created by Jan Scheithauer on 10.03.20.
//  Copyright © 2020 Jan Scheithauer. All rights reserved.
//

import Foundation
import WebKit

public class WebViewViewModel: NSObject {
    private let stringUrl: String
    public let webView: WKWebView

    init(stringUrl: String) {
        self.stringUrl = stringUrl
        self.webView = WKWebView()
        self.webView.customUserAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Safari/605.1.15"
    }

    public func request() {
        guard let url = URL(string: stringUrl) else {
            return
        }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
}
