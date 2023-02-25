
import SwiftUI

struct People: View {
  @State var myPerson: Person = .init(name: "Tony", age: 32)
  @State var myStudent: Student = .init(name: "Tony", age: 32, grade: 75, teacher: "Mark White")
  @State var myAthlete: Athlete = .init(name: "Tony", age: 32, grade: 75, teacher: "Mark White", sport: "Football", coach: "Zoumbatopoulos", performance: 0)
  var body: some View {
    Text("People")
    Button("let's see") {
      // Person Check
      myPerson.celebrateBirthday()
      print(myPerson.age)
      print(myAthlete.isAdult)
      
      // Student Check
      myStudent.study()
      print(myStudent.grade)
      
      // Athlete Check
      myAthlete.train()
      print(myAthlete.performance)
    
    }
  }
}

struct People_Previews: PreviewProvider {

  static var previews: some View {
    People()
  }
}
