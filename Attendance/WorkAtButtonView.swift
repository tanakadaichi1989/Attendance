//
//  WorkAtButtonView.swift
//  Attendance
//
//  Created by 田中大地 on 2022/07/24.
//

import SwiftUI

struct WorkAtButtonView: View {
    let placeName: String
    
    var body: some View {
        ZStack {
            Text(placeName)
                .font(.caption)
                .foregroundColor(.secondary)
            Circle()
                .stroke(.secondary, lineWidth: CGFloat(1))
            .frame(width: 75, height: 75, alignment: .center)
        }
        .onTapGesture {
            self.tapButton(workAt: placeName)
        }
    }
    
    private func tapButton(workAt: String){
        print("workAt: \(workAt)")
    }
}

struct WorkAtButtonView_Previews: PreviewProvider {
    static var previews: some View {
        WorkAtButtonView(placeName: "自宅")
    }
}
