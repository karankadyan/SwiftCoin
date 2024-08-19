import SwiftUI

struct TopMoverView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach (0..<5, id: \.self){ _ in
                        TopMoverItemView()
                    }
                }
                .padding(.vertical, 8)
            }
        }
        .padding()
    }
}

#Preview {
    TopMoverView()
}
