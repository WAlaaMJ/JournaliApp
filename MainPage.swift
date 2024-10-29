//
//  MainPage.swift
//  Walaa - Hello World
//
//  Created by Walaa on 28/10/2024.
//


import SwiftUI

struct MainPage: View {
    @ObservedObject var viewModel: JournalViewModel

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    // عنوان "Journals" في الزاوية اليسرى
                    Text("Journals")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.leading) // إضافة مسافة من اليسار

                    Spacer() // للحفاظ على العنوان في اليسار

                    // زر "+" في الزاوية اليمنى
                    NavigationLink(destination: JournalEntryView(entry: Binding(
                        get: { JournalEntry(title: "", content: "") },
                        set: { _ in }
                    ), viewModel: viewModel)) {
                        Image(systemName: "plus")
                            .font(.largeTitle)
                            .padding()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.trailing) // إضافة مسافة من اليمين
                }
                .padding(.top, 20) // مساحة أعلى

                Spacer() // المساحة الفارغة لجعل الشعار في المنتصف

                // الشعار في المنتصف
                Image("Applogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)

                Text("Begin Your Journal")
                    .foregroundColor(.color1)
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .padding(.top, 10)

                Text("Craft your personal diary, tap the plus icon to begin")
                    .font(.body)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 255)
                    .padding(.top, 7)

                Spacer() // لتوسيع الفضاء في الأسفل
            }
            .navigationBarHidden(true) // إخفاء شريط التنقل
            .background(Color.black) // إضافة لون خلفية داكن
            .edgesIgnoringSafeArea(.bottom) // لتغطية منطقة الأمان السفلية
        }
        .navigationViewStyle(StackNavigationViewStyle()) // لتجنب أي مشاكل في التنقل
    }
}

#Preview {
    MainPage(viewModel: JournalViewModel())
}
