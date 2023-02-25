
import SwiftUI

struct People: View {
  var body: some View {
    Text("People")
  }
}

struct People_Previews: PreviewProvider {
  @State var myPerson: Person = Person(name: "Tony", age: 32)
  @State var myStudent: Student = Student(name: "Tony", age: 32, grade: 75, teacher: "Mark White")
  @State var myAthlete: Athlete = Athlete(name: "Tony", age: 32, grade: 75, teacher: "Mark White", sport: "Football", coach: "Zoumba", performance: 0)
  
  static var previews: some View {
    People()
  }
}
