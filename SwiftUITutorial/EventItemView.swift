//
//  EventItemView.swift
//  SwiftUITutorial
//
//  Created by lethycia maia on 08/05/21.
//

import SwiftUI

struct EventSection: Codable, Identifiable {
    var id = UUID()
    var name: String
    var events: [EventItem]
}

struct EventItem: Codable, Equatable, Identifiable {
    var id = UUID()
    
}

struct EventCellView: View {
    var event: Event
    
    var body: some View {
        
        HStack{
            Image(systemName: event.icon) //event.icon não tá pegando mais :((((
                .colorInvert()
                .background(Circle()
                                .fill(event.color) //event.color
                    .frame(width: 30, height: 30))
            Text(event.name) //Event.name
                .padding(.leading, 8)
                .frame(width: 200, height: 20, alignment: .leading)
                .font(.system(size: 17))
            Spacer()
            Text(event.date, style: .date) // event.date
                    .foregroundColor(Color(.systemGray))
        }
    }
}

struct EventItemView_Previews: PreviewProvider {
    static var previews: some View {
        EventCellView(event: Event(name: "Churrasco do Zé", icon: "􀆮", color: Color(UIColor.systemPurple), date: Date()))
            .previewLayout(.sizeThatFits)
    }
}
