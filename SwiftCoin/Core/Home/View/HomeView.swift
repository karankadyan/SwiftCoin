import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false){
                //                top movers view
                TopMoverView()
                Divider()
                //                all coins view
                AllCoinView()
            }
            .navigationTitle("Prices")
        }
    }
}

#Preview {
    HomeView()
}
