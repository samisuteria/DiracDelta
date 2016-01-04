import Foundation

class TimeCalculator {
    
    let kMinutesInAYear: Double = 525_600
    
    //TODO: Load birthday from screen saver settings
    let birthday = NSCalendar.currentCalendar().dateWithEra(1, year: 1987, month: 8, day: 29, hour: 0, minute: 0, second: 0, nanosecond: 0)!
    
    var startDate = NSDate()
    var currentDate = NSDate()
    
    init() {
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Year, .Month, .Day, .Hour, .Minute, .Second], fromDate: startDate)
        //zero out milliseconds/nanoseconds
        startDate = calendar.dateWithEra(1,
            year: components.year,
            month: components.month,
            day: components.day,
            hour: components.hour,
            minute: components.minute,
            second: components.second,
            nanosecond: 0)!
    }
    
    func secondsCounter() -> Double {
        let count = currentDate.timeIntervalSinceDate(startDate)
        return count
    }
    
    func birthdayAge() -> Double {
        let secondsSinceBirth = currentDate.timeIntervalSinceDate(birthday)
        return secondsSinceBirth / kMinutesInAYear / 60
    }
}