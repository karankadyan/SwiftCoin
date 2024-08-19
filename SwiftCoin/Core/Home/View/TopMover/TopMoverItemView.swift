import SwiftUI

struct TopMoverItemView: View {
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
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$20,330.00")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            
            Text("+ 5.6%")
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

#Preview {
    TopMoverItemView()
}
