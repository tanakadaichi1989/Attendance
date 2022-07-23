//
//  AttendanceApp.swift
//  Attendance
//
//  Created by 田中大地 on 2022/07/24.
//

import SwiftUI

@main
struct AttendanceApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
