import SwiftUI
struct SectionHeading:View {
   @State var text: String = ""
    var body: some View{
        HStack{
            Text("\(text)")
                .font(.title2)
                .fontWeight(.semibold)
            Spacer()
        }
        .padding(4)
    }
}

