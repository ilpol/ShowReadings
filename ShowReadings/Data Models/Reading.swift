import Foundation

struct Reading {
  var time: Date?
  var reading: String?
  
  init(time: Date, reading: String = ""){
    self.time = time
    self.reading = reading
  }
}
