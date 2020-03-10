//
//  ContentView.swift
//  Wazapp
//
//  Created by Jan Scheithauer on 18.01.20.
//  Copyright © 2020 Jan Scheithauer. All rights reserved.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView(viewModel: WebViewViewModel(stringUrl: "https://web.whatsapp.com/", userAgent: "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Safari/605.1.15"))
    }
}

struct WebView: UIViewRepresentable {

    let viewModel: WebViewViewModel

    func makeUIView(context: Context) -> WKWebView {
        return viewModel.webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        viewModel.request()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
