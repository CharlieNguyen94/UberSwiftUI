import SwiftUI

struct MapViewActionButton: View {
	@Binding var showLocationSearchView: Bool

	var icon: Image {
		showLocationSearchView ?
		Image(systemName: "arrow.left") :
		Image(systemName: "line.3.horizontal")
	}

	var body: some View {
		Button {
			withAnimation(.spring()) {
				showLocationSearchView.toggle()
			}
		} label: {
			icon
				.font(.title2)
				.foregroundColor(.black)
				.padding()
				.background(.white)
				.clipShape(Circle())
				.shadow(color: .black, radius: 6)
		}
		.frame(maxWidth: .infinity, alignment: .leading)
	}
}

struct MapViewActionButton_Previews: PreviewProvider {
	static var previews: some View {
		MapViewActionButton(showLocationSearchView: .constant(false))
	}
}
