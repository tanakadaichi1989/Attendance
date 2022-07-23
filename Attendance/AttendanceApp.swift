//
//  AttendanceApp.swift
//  Attendance
//
//  Created by 田中大地 on 2022/07/24.
//

import SwiftUI

@main
struct AttendanceApp: App {
    //let persistenceController = PersistenceController.shared
    @StateObject var attendance = AttendanceViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(attendance)
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
