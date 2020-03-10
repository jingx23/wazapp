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

    init(stringUrl: String, userAgent: String? = nil) {
        self.stringUrl = stringUrl
        self.webView = WKWebView()
        self.webView.customUserAgent = userAgent
    }

    public func request() {
        guard let url = URL(string: stringUrl) else {
            return
        }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
}
