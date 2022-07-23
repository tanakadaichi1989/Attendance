//
//  AttendanceViewModel.swift
//  Attendance
//
//  Created by 田中大地 on 2022/07/24.
//

import Foundation
import SwiftUI

class AttendanceViewModel: ObservableObject {
    @Published var dataSorce: [Attendance]
    private let service: AttendanceService = AttendanceService()
    
    init(){
        self.dataSorce = []
    }
    
    internal func add(attendance: Attendance) {
        self.dataSorce.append(attendance)
    }
}
