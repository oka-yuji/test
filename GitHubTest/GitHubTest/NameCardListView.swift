//
//  NameCardListView.swift
//  GitHubTest
//
//  Created by 岡優志 on 2021/06/27.
//

import SwiftUI

struct NameCardListView: View {
    @State private var inputNum = ""
    @State private var num = 1
    var body: some View {
        NavigationView {
            VStack {
                HStack(spacing: 5.0){
                TextField("input Num", text: $inputNum)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .accessibility(identifier: "inputNumTextField")
                    Button("Go", action: {
                        num = Int(inputNum) ?? 1
                        print(num)
                    })
                    .foregroundColor(.black)
                    .frame(width: 50, height: 30)
                    .background(Color.gray)
                    .cornerRadius(5)
                        .padding()
                }.padding(.horizontal)
                List(0..<10) { item in
                    VStack(alignment: .leading) {
                        NavigationLink(destination: NameCardView(NameNum: item + num)) {
                            Text("NameCard No.\(item + num)")
                                .font(.system(size: 16))
                        }
                    }
                }
                .navigationTitle("ListView")
            }
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
