import SwiftUI

struct TopMoverItemView: View {
    let coin: Coin
    var body: some View {
        VStack (alignment: .leading){
            //        image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            //        coin info
            HStack{
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("\(coin.currentPrice)")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            
            Text("\(coin.priceChangePercentage24H)")
                .font(.title2)
                .foregroundStyle(Color(.green))
            //        coin percent change
        }
        .frame(width: 140, height: 140)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray5), lineWidth: 2)
        )
    }
}
//
//#Preview {
//    TopMoverItemView()
//}
