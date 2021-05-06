import SwiftUI

struct ContentView: View {
    @StateObject var eventController = EventController()
    var body: some View {
        EventListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
