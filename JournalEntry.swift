//
//  Model.swift
//  Walaa - Hello World
//
//  Created by Walaa on 29/10/2024.
//

import Foundation

struct JournalEntry: Identifiable {
    let id = UUID()
    var title: String
    var content: String
}


