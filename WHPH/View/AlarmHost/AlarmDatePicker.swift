//
//  AlarmDatePicker.swift
//  WHPH
//
//  Created by Devin Green on 3/30/20.
//  Copyright © 2020 Devin Green. All rights reserved.
//

import SwiftUI

fileprivate let calendar = Calendar.current

struct AlarmDatePicker: View {
    @EnvironmentObject var alarm: Alarm
    
    var body: some View {
        DatePicker("Set time",
                   selection: $alarm.time.underlyingDate,
                   in: $alarm.time.wrappedValue.underlyingDate.addingTimeInterval(-60*60*24)...$alarm.time.wrappedValue.underlyingDate.addingTimeInterval(60*60*24),
                   displayedComponents: .hourAndMinute)
    }
}

struct AlarmDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        AlarmDatePicker()
            .environmentObject(Alarm.TEST())
    }
}
