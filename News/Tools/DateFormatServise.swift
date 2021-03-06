//
//  DataFormatServise.swift
//  News
//
//  Created by Kovalyk Nazar on 5/10/19.
//  Copyright © 2019 Kovalyk Nazar. All rights reserved.
//

import UIKit

class DateFormatService {
    
    //MARK: Date Formatters

    private static let serverDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        return dateFormatter
    }()

    private static let displayDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        return dateFormatter
    }()

    //MARK: Date Formatte functions
    
    static func dateFormatter(time: String) -> String {
        guard let serverDate = serverDateFormatter.date(from: time) else { return "--:--" }
        let displayDate = displayDateFormatter.string(from: serverDate)
        return displayDate
    }
}
