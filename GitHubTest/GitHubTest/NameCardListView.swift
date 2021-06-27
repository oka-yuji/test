//
//  NameCardListView.swift
//  GitHubTest
//
//  Created by 岡優志 on 2021/06/27.
//

import SwiftUI

struct NameCardListView: View {
    var body: some View {
        NavigationView {
            List(0..<10) { item in
                VStack(alignment: .leading) {
                    NameCardView(NameNum: item)
                }
            }
            .navigationTitle("ListView")
        }
    }
}

struct NameCardListView_Previews: PreviewProvider {
    static var previews: some View {
        NameCardListView()
    }
}

struct NameCardView: View {
    @State var NameNum:Int
    var body: some View {
        HStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 50, height: 50)
            Spacer()
            VStack(alignment: .leading){
                Text("Name:test name \(NameNum)")
                    .font(.title2).bold()
                Text("Details: age ,sex")
                    .font(.caption)
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.8, height: 70)
        .padding()
        .background(Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)))
        .cornerRadius(25)
    }
}
