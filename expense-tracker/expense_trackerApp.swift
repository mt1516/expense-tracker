//
//  expense_trackerApp.swift
//  expense-tracker
//
//  Created by Melvin Tong on 28/2/2023.
//

import SwiftUI

@main
struct expense_trackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
