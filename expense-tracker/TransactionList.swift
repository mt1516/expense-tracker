//
//  TransactionList.swift
//  expense-tracker
//
//  Created by Melvin Tong on 28/2/2023.
//

import SwiftUI

struct TransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    var body: some View {
        VStack {
            List {
                // Transaction Groups
                ForEach(Array(transactionListVM.groupTransactionByMonth()), id: \.key) { month,
                    transactions in
                    Section {
                        // Transaction List
                        ForEach(transactions) { transaction in
                            TransactionRow(transaction: transaction)
                        }
                    } header: {
                        // Transaction Month
                        Text(month)
                    }
                    .listSectionSeparator(.hidden)
                }
            }
        }
        .navigationTitle("Transactions")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TransactionList_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    
    static var previews: some View {
        NavigationView {
            TransactionList()
                .environmentObject(transactionListVM)
        }
        NavigationView {
            TransactionList()
                .environmentObject(transactionListVM)
                .preferredColorScheme(.dark)
        }
    }
}
