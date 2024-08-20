import SwiftUI

struct AllCoinView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        VStack{
            Text("All Coins")
                .font(.headline)
                .padding()
        }
        
        HStack{
            Text("Coin")
            
            Spacer()
            
            Text("Prices")
//            CoinRowView()
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.horizontal)
        
        ScrollView {
            VStack {
                ScrollView {
                    ForEach (viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
    }
}

//#Preview {
//    AllCoinView()
//}
