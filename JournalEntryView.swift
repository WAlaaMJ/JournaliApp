//
//  Journals.swift
//  Walaa - Hello World
//
//  Created by Walaa on 29/10/2024.
//

import SwiftUI

struct JournalEntryView: View {
    @Binding var entry: JournalEntry
    @ObservedObject var viewModel: JournalViewModel

    var body: some View {
        VStack {
            TextField("Title", text: $entry.title)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextEditor(text: $entry.content)
                .border(Color.gray, width: 1)
                .padding()

            HStack {
                Button("Save") {
                    viewModel.saveEntry(entry) // حفظ الإدخال عند الضغط على الزر
                }
                .padding()

                Button("Cancel")
        {
                    // منطق لإلغاء الإدخال (يمكنك تركه فارغًا أو إضافة أي منطق تريده)
                }
                .padding()
            }
        }
        .padding()
        .navigationTitle("Journal Entry")
        .navigationBarBackButtonHidden(false) // إظهار زر العودة
    }
}

#Preview {
    JournalEntryView(entry: .constant(JournalEntry(title: "", content: "")), viewModel: JournalViewModel())
}
