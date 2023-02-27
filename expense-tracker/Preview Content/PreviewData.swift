//
//  PreviewData.swift
//  expense-tracker
//
//  Created by Melvin Tong on 28/2/2023.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "20/02/2023", institution: "Citi", account: "Citi Rewards", merchant: "McDonald's", amount: 21, type: "debit", categoryId: 001, category: "Restaurant", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
