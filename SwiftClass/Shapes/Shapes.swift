
import SwiftUI

struct Shapes: View {
  @State var myShape: Rectangle = .init(height: 100, width: 300)
    var body: some View {
        Text("Protocols")
      Button("Test the Shapes") {
        print(myShape.printDescription)
      }
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
