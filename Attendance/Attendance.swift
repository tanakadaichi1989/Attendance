//
//  Attendance.swift
//  Attendance
//
//  Created by 田中大地 on 2022/07/24.
//

import Foundation

struct Attendance {
    let ID: UUID
    var mailAddress: String
    var dateTimeIn: Date
    var dateTimeOut: Date
    var workAt: String
}
