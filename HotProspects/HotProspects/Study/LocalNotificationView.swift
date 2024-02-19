//
//  LocalNotificationView.swift
//  HotProspects
//
//  Created by OLEKSANDR ISAIEV on 18.02.2024.
//

import SwiftUI
import UserNotifications

struct LocalNotificationView: View {
    var body: some View {
        VStack {
            Button("Request Permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("All set!")
                    } else if let error {
                        print(error.localizedDescription)
                    }
                }
            }
            
            Button("Schedult Notification") {
                // second
            }
        }
    }
}

#Preview {
    LocalNotificationView()
}
