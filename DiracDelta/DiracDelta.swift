import Foundation

class DiracDelta {
    
    let birthday = NSCalendar.currentCalendar().dateWithEra(1,
        year: 1987, month: 8, day: 29, hour: 0, minute: 0, second: 0, nanosecond: 0)!
    
    var startDate = NSDate()
    var currentDate = NSDate()
    
    let kMinutesInAYear: Double = 525600
    
    init() {
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Year, .Month, .Day, .Hour, .Minute, .Second], fromDate: startDate)
        
        //zero out subseconds
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
        let secondsCount = currentDate.timeIntervalSinceDate(startDate)
        return secondsCount
    }
    
    func birthdayAge() -> Double {
        let secondsSinceBirthday = currentDate.timeIntervalSinceDate(birthday)
        return secondsSinceBirthday / kMinutesInAYear / 60
    }
    
}