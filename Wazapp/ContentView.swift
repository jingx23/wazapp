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
        WebView(viewModel: WebViewViewModel(stringUrl: "https://web.whatsapp.com/"))
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
