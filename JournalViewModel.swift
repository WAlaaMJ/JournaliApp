//
//  ViewModel.swift
//  Walaa - Hello World
//
//  Created by Walaa on 29/10/2024.
//

import Foundation
import Combine

class JournalViewModel: ObservableObject {
    @Published var journalEntries: [JournalEntry] = []
    @Published var currentEntry: JournalEntry?

    // دالة لإضافة مذكرة جديدة
    func addEntry() {
        let newEntry = JournalEntry(title: "New Entry", content: "")
        journalEntries.append(newEntry)
        currentEntry = newEntry
    }

    // دالة لحفظ مذكرة معينة
    func saveEntry(_ entry: JournalEntry) {
        if let index = journalEntries.firstIndex(where: { $0.id == entry.id }) {
            journalEntries[index] = entry // تحديث المدخل الحالي
        } else {
            journalEntries.append(entry) // إضافة المدخل إلى قائمة المذكرات
        }
        currentEntry = nil // إعادة تعيين الإدخال الحالي
    }
}



