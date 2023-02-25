
import Foundation

class Person {
  let name: String
  var age: Int
  var isAdult: Bool {
    return self.age >= 18 ? true : false
  }
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
  
  func celebrateBirthday() {
    return self.age += 1
  }
}

class Student: Person {
  var grade: Int
  let teacher: String
  var isPassing: Bool {
    return self.grade > 40 ? true : false
  }
  
  init(name: String, age: Int, grade: Int, teacher: String) {
    self.grade = grade
    self.teacher = teacher
    super.init(name: name, age: age)
  }
  
  func study() {
    let randomInt = Int.random(in: 0...10)
    self.grade += randomInt
  }
}

class Athlete: Student {
  let sport: String
  let coach: String
  var performance: Int
  
  init(name: String, age: Int, grade: Int, teacher: String, sport: String, coach: String, performance: Int) {
    self.sport = sport
    self.coach = coach
    self.performance = performance
    super.init(name: name, age: age, grade: grade, teacher: teacher)
  }
  
  func train() {
    let randomInt = Int.random(in: 0...10)
    self.performance += randomInt
  }
}
