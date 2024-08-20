import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false){
                //                top movers view
                TopMoverView(viewModel: viewModel)
                Divider()
                //                all coins view
                AllCoinView(viewModel: viewModel)
            }
            .navigationTitle("Prices")
        }
    }
}

#Preview {
    HomeView()
}
