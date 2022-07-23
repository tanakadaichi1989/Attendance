//
//  AttendanceTests.swift
//  AttendanceTests
//
//  Created by 田中大地 on 2022/07/24.
//

import XCTest
@testable import Attendance

class AttendanceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAttendanceAdd() throws {
        let viewModel = AttendanceViewModel()
        let attendance1 = Attendance(ID: UUID(), mailAddress: "example1@example.com", dateTimeIn: Date(), dateTimeOut: Date(), workAt: "自宅")
        viewModel.add(attendance: attendance1)
        XCTAssertEqual(viewModel.dataSorce.count, 1)
        XCTAssertEqual(viewModel.dataSorce.last?.mailAddress, "example1@example.com")
        XCTAssertEqual(viewModel.dataSorce.last?.workAt, "自宅")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
