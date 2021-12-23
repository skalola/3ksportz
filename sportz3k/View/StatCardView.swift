//
//  StatCardView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 12/1/21.
//

import Foundation
import SwiftUI
import Amplify
import AmplifyPlugins
import AuthenticationServices


struct StatCardView: View {
    
    // Environment for Color Schemes and AuthState
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: AuthUser
    @State var amount: Double = 0.0
    @State var account: Stats?
    @FocusState private var dismissKeypad: Bool
    
    var balance: String {
        let accountBalance = NSNumber(value: self.account?.points ?? 0)
        let currencyBalance = self.currencyFormatter.string(from: accountBalance)
        return currencyBalance ?? "$0.00"
    }

    private let currencyFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }()

    var amountFormatterBinding: Binding<String> {
        Binding<String>(
            get: {
                self.currencyFormatter
                    .string(from: NSNumber(value: self.amount))
                    ?? ""
            },
            set: { newAmount in
                self.amount = self.currencyFormatter.number(from: newAmount)?
                    .doubleValue
                    ?? 0
            }
        )
    }

    func resetAmount() {
        amount = 0
    }

    func add() {
        let currentBalance = account?.points ?? 0
            let newBalance = currentBalance + amount

            updateBalance(to: newBalance)
            
            resetAmount()
    }

    func subtract() {
        let currentBalance = account?.points ?? 0
            let newBalance = currentBalance - amount

            updateBalance(to: newBalance)
            
            resetAmount()
    }
    
    func updateBalance(to newBalance: Double) {

        // 1
        guard var account = self.account else { return }

        // 2
        account.points = newBalance
        
        // 3
        Amplify.DataStore.save(account) { result in

            // 4
            switch result {
            case .success(let updatedAccount):
                print("Updated balance to - \(updatedAccount.points)")
                self.account = updatedAccount
                
            case .failure(let error):
                print("Could not update account - \(error)")
            }
        }
    }
    
    func createAccount() {

        // 1
        let account = Stats(id: Self.currentUserId, points: 0)
        
        // 2
        Amplify.DataStore.save(account) { result in
            switch result {
                
            case .success(let createdAccount):
                print("Account created - \(createdAccount)")
                self.account = createdAccount
                
            case .failure(let error):
                print("Could not create account - \(error)")
            }
        }
    }
    
    func getAccount() {
        // 1
        Amplify.DataStore.query(Stats.self, byId: Self.currentUserId) { (result) in

            // 2
            switch result {
            case .success(let queriedAccount):

                // 3
                if let queriedAccount = queriedAccount {
                    print("Found account - \(queriedAccount)")
                    self.account = queriedAccount
                    
                } else {
                    print("No account found")
                    self.createAccount()
                    
                }
                
            case .failure(let error):
                print("Could not perform query for account - \(error)")
            }
        }
    }
 
    var body: some View {
        // 1
            VStack {
                
                // 3
                VStack {
                    Text(balance)
                        .font(.custom("Avenir Next Condensed Bold", size: 25))
                    
                    Text("⭐️⭐️⭐️⭐️⭐️")
                        .font(.custom("Avenir Next Condensed Bold", size: 15))
      
                    // 1
                    Spacer()
                        .frame(height: 50)

                    // 2
                    VStack(spacing: 20) {

                        // 3
                        VStack {
                            Text("Add points")
                                .fontWeight(.medium)

                            // 4
                            TextField("Amount", text: amountFormatterBinding)
                                .font(.largeTitle)
                                .multilineTextAlignment(.center)
                                .keyboardType(.decimalPad)
                                .focused($dismissKeypad)
                                .toolbar {
                                    ToolbarItem(placement: .keyboard) {
                                        Button("Done") {
                                            dismissKeypad = false
                                        }
                                    }
                                }
                        }

                        // 5
                        HStack(spacing: 50) {
                            Button(action: add, label: {
                                Image(systemName: "plus")
                                    .padding()
                                    .background(Color.green)
                                    .clipShape(Circle())
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                            })

                            Button(action: subtract, label: {
                                Image(systemName: "minus")
                                    .padding()
                                    .background(Color.red)
                                    .clipShape(Circle())
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                            })
                        }
                    }
                }
                
                // 4
                Spacer()
            }
            .onAppear(perform: getAccount)
            .padding()
    }

}

extension StatCardView {
    fileprivate static let currentUserId = "currentUserId"
}

struct StatCardView_Preview: PreviewProvider {
    private struct GuestUser: AuthUser {
        let userId: String = "1"
        let username: String = "Guest"
    }
    
    static var previews: some View {
        StatCardView(user: GuestUser()).environmentObject(SessionManager())
        
    }
}
