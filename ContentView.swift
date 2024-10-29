//
//  ContentView.swift
//  Walaa - Hello World
//
//  Created by Walaa on 29/10/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = JournalViewModel() // استخدام StateObject لإنشاء ViewModel

    var body: some View {
        MainPage(viewModel: viewModel) // تمرير ViewModel إلى MainPage
    }
}

#Preview {
    ContentView()
}


