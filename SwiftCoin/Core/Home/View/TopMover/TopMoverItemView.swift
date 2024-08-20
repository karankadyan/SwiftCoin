import SwiftUI
import Kingfisher
struct TopMoverItemView: View {
    let coin: Coin
    var body: some View {
        VStack (alignment: .leading){
            //        image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            //        coin info
            HStack{
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .fontWeight(.bold)
            }
            //        coin percent change
            Text(coin.priceChangePercentage24H.toPercentString())
                .font(.callout)
                .foregroundStyle(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 140, height: 140)
        .background(Color("ItemBackgroundColor"))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray5), lineWidth: 2)
        )
    }
}
//
//#Preview {
//    TopMoverItemView()
//}
