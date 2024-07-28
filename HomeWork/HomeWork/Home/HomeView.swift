//
//  HomeView.swift
//  HomeWork
//
//  Created by nyon on 7/28/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text(viewModel.title)
                        .foregroundColor(.white)
                        .font(.headline)
                    Spacer()
                    Button(action: {
                    }) {
                        Image(systemName: "cart")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                    }
                    .frame(width: 40, height: 40)
                    Button(action: {
                    }) {
                        Image(systemName: "ellipsis.message")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                    }
                    .frame(width: 40, height: 40)
                    Button(action: {
                    }) {
                        Image(systemName: "slider.horizontal.3")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                    }
                    .frame(width: 40, height: 40)
                }
                .padding()
                topCard
                    .padding()
                
                shortsMenus
                    .padding()
                
                bannerView
                    .padding()
                
                listView
                    .padding()
                
                VStack {
                    Button(action: {
                        viewModel.actionEvent(type: .didTapButton)
                    }, label: {
                        Spacer()
                        Text("\(viewModel.skeletonVariant) \(viewModel.skeletonState) Skeleton")
                            .foregroundColor(.white)
                            .font(.headline)
                        Spacer()
                    })
                }
                .frame(height: 60)
                .background(.red)
                .cornerRadius(20)
                .padding()

                Spacer()
            }
            .background(.orange02)
        }
    }
    
    var topCard: some View {
        VStack {
            HStack(spacing: 20) {
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "dollarsign.circle")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.gray)
                        Text(viewModel.topCardInfo.leftTitle)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .skeleton(
                        variant: viewModel.skeletonVariant,
                        state: viewModel.skeletonState,
                        shape: .round
                    )
                    
                    Text(viewModel.topCardInfo.leftValue)
                        .foregroundColor(.orange02)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .skeleton(
                            variant: viewModel.skeletonVariant,
                            state: viewModel.skeletonState,
                            shape: .round
                        )
                }
                .padding()
                
                Divider()
                    .background(.orange02)
                    .border(.orange02, width: 2)
                    .frame(width: 2, height: 48)
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "dollarsign.circle")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.gray)
                            Text(viewModel.topCardInfo.rightTitle)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .skeleton(
                            variant: viewModel.skeletonVariant,
                            state: viewModel.skeletonState,
                            shape: .round
                        )
                        Text(viewModel.topCardInfo.rightValue)
                            .foregroundColor(.orange02)
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .skeleton(
                                variant: viewModel.skeletonVariant,
                                state: viewModel.skeletonState,
                                shape: .round
                            )
                    }
                }
                Button(action: {
                    viewModel.actionEvent(type: .didTapQRButton)
                }, label: {
                    Image(systemName: "qrcode.viewfinder")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .padding()
                        .foregroundColor(.orange02)
                })
                .frame(width: 40, height: 40)
                .skeleton(
                    variant: viewModel.skeletonVariant,
                    state: viewModel.skeletonState,
                    shape: .circle
                )
                .padding(.trailing, 16)
            }
        }
        // TODO: rain.b 배경색 주고 코너 줘야 함...
        .background(.white)
        .cornerRadius(16)
    }
    
    var shortsMenus: some View {
        HStack {
            Button(action: {
                viewModel.actionEvent(type: .didTapQRButton)
            }, label: {
                VStack(alignment: .center) {
                    Image(systemName: "headphones")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .padding()
                        .foregroundColor(.orange02)
                        .background(.white)
                        .cornerRadius(16)
                        .skeleton(type: .pink,
                                  variant: viewModel.skeletonVariant,
                                  state: viewModel.skeletonState,
                                  shape: .round
                        )
                    Text("Help")
                        .font(.caption)
                        .foregroundColor(.white)
                }
            })
            Spacer()
            Button(action: {
                viewModel.actionEvent(type: .didTapQRButton)
            }, label: {
                VStack(alignment: .center) {
                    Image(systemName: "iphone.smartbatterycase.gen2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .padding()
                        .foregroundColor(.orange02)
                        .background(.white)
                        .cornerRadius(16)
                        .skeleton(type: .pink,
                                  variant: viewModel.skeletonVariant,
                                  state: viewModel.skeletonState,
                                  shape: .round
                        )
                    Text("Phone")
                        .font(.caption)
                        .foregroundColor(.white)
                }
            })
            Spacer()
            Button(action: {
                viewModel.actionEvent(type: .didTapQRButton)
            }, label: {
                VStack(alignment: .center) {
                    Image(systemName: "truck.box")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .padding()
                        .foregroundColor(.orange02)
                        .background(.white)
                        .cornerRadius(16)
                        .skeleton(type: .pink,
                                  variant: viewModel.skeletonVariant,
                                  state: viewModel.skeletonState,
                                  shape: .round
                        )
                    Text("Trans")
                        .font(.caption)
                        .foregroundColor(.white)
                }
            })
            Spacer()
            Button(action: {
                viewModel.actionEvent(type: .didTapQRButton)
            }, label: {
                VStack(alignment: .center) {
                    Image(systemName: "link.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .padding()
                        .foregroundColor(.orange02)
                        .background(.white)
                        .cornerRadius(16)
                        .skeleton(type: .pink,
                                  variant: viewModel.skeletonVariant,
                                  state: viewModel.skeletonState,
                                  shape: .round
                        )
                    Text("File")
                        .font(.caption)
                        .foregroundColor(.white)
                }
            })
            Spacer()
            Button(action: {
                viewModel.actionEvent(type: .didTapQRButton)
            }, label: {
                VStack(alignment: .center) {
                    Image(systemName: "arrow.uturn.backward.square")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .padding()
                        .foregroundColor(.orange02)
                        .background(.white)
                        .cornerRadius(16)
                        .skeleton(type: .pink,
                                  variant: viewModel.skeletonVariant,
                                  state: viewModel.skeletonState,
                                  shape: .round
                        )
                    Text("Back")
                        .font(.caption)
                        .foregroundColor(.white)
                }
            })
        }
    }
    
    var bannerView: some View {
        HStack {
            AsyncImage(url: URL(string: "https://i.namu.wiki/i/wZcgBkTNELQ8b-D_2tM6dwCyBTFBo3Ud_rflu_U57JpO_WvhZyo2TVvxTy-w1UN0SIuO6nMPjiUw9S0Q8-GDBw.webp")) { image in
                image
                    .resizable()
                    .scaledToFit()
                // TODO: rain.b 코너 주고 frame 설정해야 함.
                    .cornerRadius(10)
                    .frame(width: 70, height: 70)
                    .padding(10)
            } placeholder: {
                Text("")
                    .frame(width: 70, height: 70)
                    .background(.gray02)
                    .cornerRadius(10)
                    .padding(10)
            }
            Spacer()
            VStack(alignment: .leading) {
                Text("New Arival")
                    .foregroundColor(.white)
                    .font(.caption)
                Text("Hooman Jacket")
                    .foregroundColor(.white)
                    .font(.caption)
            }
            Spacer()
            Text("90% OFF")
                .foregroundColor(.white)
                .font(.headline)
            Spacer()
        }
        .background(.bannerBG)
        .cornerRadius(20)
        .skeleton(
            variant: viewModel.skeletonVariant,
            state: viewModel.skeletonState,
            shape: .round
        )
    }
    
    var listView: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(viewModel.breedsListResult.items, id: \.self) { item in
                    VStack(alignment: .leading) {
                        AsyncImage(url: URL(string: item.imagePath)) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .cornerRadius(20)
                                .skeleton(type: .pink,
                                          variant: viewModel.skeletonVariant,
                                          state: viewModel.skeletonState,
                                          shape: .round
                                )
                        } placeholder: {
                            Text("")
                                .frame(width: 100, height: 100)
                                .background(.gray02)
                                .cornerRadius(20)
                                .skeleton(type: .gray,
                                          variant: viewModel.skeletonVariant,
                                          state: .loading,
                                          shape: .round
                                )
                        }
                        Text(item.name)
                            .frame(width: 100)
                            .font(.headline)
                            .foregroundColor(.white)
                            .lineLimit(1)
                            .truncationMode(.tail)
                    }
                }
            }
            .frame(height: 150)
        }
    }
}

#Preview {
    struct MockService: APIServiceable {
        func fetchRequest<T>(endpoint: URL, parameters: [String : Any]?, resultType: T.Type) async throws -> T where T : Decodable {
            let decoder = JSONDecoder()
            let json =
"""
{
    "message": {
        "affenpinscher": [],
        "african": [],
        "airedale": []
    },
    "status": "success"
}
"""
            let data = Data(json.utf8)
            let result = try decoder.decode(resultType, from: data)
            return result
        }
    }
    return HomeView(viewModel: HomeViewModel(service: MockService()))
}
