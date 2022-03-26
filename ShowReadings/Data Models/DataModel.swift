import Foundation

class DataModel {
  var readings = [Reading]()
  
  let formatter = DateFormatter()
  let dateFormat = "yyyy-MM-dd HH:mm:ss"
  
  func stringToDate(time: String) -> Date? {
    formatter.dateFormat = dateFormat
    return formatter.date(from: time)
  }
  
  func dateToString(time: Date) -> String {
    return formatter.string(from: time)
  }
  
  // Заглушка для измерений
  func setDefaultReadings() {
    
    readings = [
      Reading(time: stringToDate(time: "2022-03-27 15:23:33")! as Date,
              reading: "423543"
             ),
      Reading(time: stringToDate(time: "2022-02-27 16:23:33")! as Date,
              reading: "3536"
             ),
      Reading(time: stringToDate(time: "2022-01-27 13:32:33")! as Date,
              reading: "7876"
             ),
      Reading(time: stringToDate(time: "2022-01-24 17:12:33")! as Date,
              reading: "987"
             ),
      Reading(time: stringToDate(time: "2022-01-21 18:34:33")! as Date,
              reading: "4567"
             ),
      Reading(time: stringToDate(time: "2022-01-18 14:54:33")! as Date,
              reading: "978"
             ),
      Reading(time: stringToDate(time: "2022-01-12 04:34:33")! as Date,
              reading: "3453"
             ),
      Reading(time: stringToDate(time: "2022-01-11 07:12:33")! as Date,
              reading: "75"
             ),
      Reading(time: stringToDate(time: "2022-01-10 05:12:33")! as Date,
              reading: "132"
             ),
      Reading(time: stringToDate(time: "2022-01-09 08:12:33")! as Date,
              reading: "321"
             ),
      Reading(time: stringToDate(time: "2022-01-08 12:12:33")! as Date,
              reading: "542"
             ),
      Reading(time: stringToDate(time: "2022-01-07 16:12:33")! as Date,
              reading: "564"
             ),
      Reading(time: stringToDate(time: "2022-01-06 17:12:33")! as Date,
              reading: "342"
             ),
      Reading(time: stringToDate(time: "2022-01-05 18:12:33")! as Date,
              reading: "534"
             ),
      Reading(time: stringToDate(time: "2022-01-04 21:12:33")! as Date,
              reading: "432"
             ),
      Reading(time: stringToDate(time: "2022-01-03 23:12:33")! as Date,
              reading: "653"
             ),
      Reading(time: stringToDate(time: "2022-01-02 13:12:33")! as Date,
              reading: "3124"
             ),
      Reading(time: stringToDate(time: "2022-01-01 15:12:33")! as Date,
              reading: "534"
             ),
      Reading(time: stringToDate(time: "2021-12-05 16:12:33")! as Date,
              reading: "245"
             ),
    ]
  }
}
