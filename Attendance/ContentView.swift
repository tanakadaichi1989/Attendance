//
//  ContentView.swift
//  Attendance
//
//  Created by 田中大地 on 2022/07/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @EnvironmentObject var viewModel: AttendanceViewModel
    
    var body : some View {
        VStack {
            Spacer()
            workAtButtons
            Spacer()
            timeInButton
            timeOutButton
            Spacer()
        }
    }
}

extension ContentView {
    private var attendanceListView : some View {
        List(viewModel.dataSorce,id: \.ID){ data in
            Text(data.mailAddress)
        }
    }
    
    private var workAtButtons: some View {
        HStack {
            WorkAtButtonView(placeName: "オフィス")
            WorkAtButtonView(placeName: "自宅")
            WorkAtButtonView(placeName: "お客様先")
        }
    }
    
    private var timeInButton: some View {
        Button {
            let attendance = Attendance(ID: UUID(), mailAddress: "example1@example.com", dateTimeIn: Date(), dateTimeOut: Date(), workAt: "自宅")
            viewModel.add(attendance: attendance)
        } label: {
            Text("Time In")
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var timeOutButton: some View {
        Button {
            let attendance = Attendance(ID: UUID(), mailAddress: "example1@example.com", dateTimeIn: Date(), dateTimeOut: Date(), workAt: "自宅")
            viewModel.add(attendance: attendance)
        } label: {
            Text("Time Out")
        }
        .buttonStyle(.borderedProminent)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        ContentView()
            .environmentObject(AttendanceViewModel())
    }
}
