import SwiftUI

struct AllCoinView: View {
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
                    ForEach (0..<50, id:  \.self) { _ in
                        CoinRowView()
                    }
                }
            }
        }
    }
}

#Preview {
    AllCoinView()
}
