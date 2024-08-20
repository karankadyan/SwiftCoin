import SwiftUI

struct TopMoverView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach (viewModel.topMovingCoins){ coin in
                        TopMoverItemView(coin: coin)
                    }
                }
                .padding(.vertical, 8)
            }
        }
        .padding()
    }
}

//#Preview {
//    TopMoverView()
//}
