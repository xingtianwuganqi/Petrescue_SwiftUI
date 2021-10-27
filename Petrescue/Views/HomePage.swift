//
//  HomePage.swift
//  Petrescue
//
//  Created by Admin on 2021/10/26.
//

import SwiftUI


struct HomePage: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<20) { i in
                    MsgInfoView()
                        .listRowInsets(EdgeInsets())
                }
            }.listStyle(.grouped)
                .navigationTitle("首页")
        }
    }
}

struct MsgInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // 头像
            UserInfoView()
            Text("测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试")
                .padding(EdgeInsets.init(top: 0, leading: 15, bottom: 10, trailing: 15))
            ImageContentView()
            ButtonContentView()
        }
    }
}

struct UserInfoView: View {
    var body: some View {
        HStack {
            Image("icon_message_sys")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .frame(width: 30, height: 30, alignment: .leading)
                 //通过resizable方法，使图像视图进行自动缩放，以适配其父视图
            VStack(alignment: .leading) {
                Text("name")
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                
                Text("2021.10.27")
                    .font(.system(size: 12))
                    .fontWeight(.regular)
                    .foregroundColor(Color.black)
                
            }
            
            Spacer()
            Button(action: {}) {
                Image("icon_more")
            }
        }.padding()
    }
}

struct ImageContentView: View {
    var body: some View {
        VStack {
            Image("icon_plh")
                .resizable()
                .frame(width: UIScreen.main.bounds.size.width - 30, height: (UIScreen.main.bounds.size.width - 30) * 0.6, alignment: .center)
                .cornerRadius(8)

        }.padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
    }
}

struct ButtonContentView: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Image("icon_zan_un")
                Text("点赞")
                    .font(.system(size: 12))
                    .foregroundColor(Color.gray)
            }.padding(EdgeInsets(top: 0,leading: 20,bottom: 0,trailing: 0))
            Spacer()
            Button(action: {}) {
                Image("icon_collection_un")
                Text("收藏")
                    .font(.system(size: 12))
                    .foregroundColor(Color.gray)
            }
            Spacer()
            Button(action: {}) {
                Image("icon_show_commen")
                Text("评论")
                    .font(.system(size: 12))
                    .foregroundColor(Color.gray)
            }.padding(EdgeInsets(top: 0,leading: 0,bottom: 0,trailing: 20))
        }.padding()
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
