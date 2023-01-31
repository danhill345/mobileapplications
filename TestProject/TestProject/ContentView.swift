//
//  ContentView.swift
//  TestProject
//
//  Created by Daniel Hill on 27/01/2023.
//

import SwiftUI

struct GroupResults{
    var GroupAWinner: String
    var GroupASecond: String
    var GroupBWinner: String
    var GroupBSecond: String
    var GroupCWinner: String
    var GroupCSecond: String
    var GroupDWinner: String
    var GroupDSecond: String
    var GroupEWinner: String
    var GroupESecond: String
    var GroupFWinner: String
    var GroupFSecond: String
    var GroupGWinner: String
    var GroupGSecond: String
    var GroupHWinner: String
    var GroupHSecond: String
    var ro16Match1Winner: String
    var ro16Match2Winner: String
    var ro16Match3Winner: String
    var ro16Match4Winner: String
    var ro16Match5Winner: String
    var ro16Match6Winner: String
    var ro16Match7Winner: String
    var ro16Match8Winner: String
    var ro8Match1Winner: String
    var ro8Match2Winner: String
    var ro8Match3Winner: String
    var ro8Match4Winner: String
    var ro4Match1Winner: String
    var ro4Match2Winner: String
    var ro3Match1Winner: String
    var ro2Match1Winner: String
    
    mutating func reset(){
        GroupAWinner = ""
        GroupASecond = ""
        GroupBWinner = ""
        GroupBSecond = ""
        GroupCWinner = ""
        GroupCSecond = ""
        GroupDWinner = ""
        GroupDSecond = ""
        GroupEWinner = ""
        GroupESecond = ""
        GroupFWinner = ""
        GroupFSecond = ""
        GroupGWinner = ""
        GroupGSecond = ""
        GroupHWinner = ""
        GroupHSecond = ""
        ro16Match1Winner = ""
        ro16Match2Winner = ""
        ro16Match3Winner = ""
        ro16Match4Winner = ""
        ro16Match5Winner = ""
        ro16Match6Winner = ""
        ro16Match7Winner = ""
        ro16Match8Winner = ""
        ro8Match1Winner = ""
        ro8Match2Winner = ""
        ro8Match3Winner = ""
        ro8Match4Winner = ""
        ro4Match1Winner = ""
        ro4Match2Winner = ""
        ro2Match1Winner = ""
    }
}


struct HomePage: View {
    @State private var results = GroupResults(GroupAWinner: "", GroupASecond: "", GroupBWinner: "", GroupBSecond: "", GroupCWinner: "", GroupCSecond: "", GroupDWinner: "", GroupDSecond: "", GroupEWinner: "", GroupESecond: "", GroupFWinner: "", GroupFSecond: "", GroupGWinner: "", GroupGSecond: "", GroupHWinner: "", GroupHSecond: "", ro16Match1Winner: "", ro16Match2Winner: "", ro16Match3Winner: "", ro16Match4Winner: "", ro16Match5Winner: "", ro16Match6Winner: "", ro16Match7Winner: "", ro16Match8Winner: "", ro8Match1Winner: "", ro8Match2Winner: "", ro8Match3Winner: "", ro8Match4Winner: "", ro4Match1Winner: "", ro4Match2Winner: "", ro3Match1Winner: "", ro2Match1Winner: "")
    @State private var showNextView = false
    var body: some View {
        Image("Element 1")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 350, height: 500)
            .clipped()
            .padding(.bottom, 370)
            .overlay
        {Group {
            Spacer()
            Text("World Cup predictor 2022")
                .font(.largeTitle)
                .frame(width: 400)
                .clipped()
                .padding()
            Spacer()
            Image("Logo")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 250)
                .clipped()
                .padding(.top, 330)
                .mask { RoundedRectangle(cornerRadius: 20, style: .continuous) }
            Button(action: {
                self.showNextView.toggle()
            }) {
                Image("Go button")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 50)
                    .clipped()
                    .padding(.top, 650)
                
            }
            .sheet(isPresented: self.$showNextView){
                GroupAView(results: $results)
            }
            
        }
        }
            
        }
        
    }
    
struct GroupAView: View {
    @Binding var results: GroupResults
    @State private var showNextView = false
    
    
    var body: some View{
        VStack {
            Text("World cup predictor 2022")
                .frame(maxWidth: .infinity)
                .font(.largeTitle)
            Text("Group A")
            Spacer()
            Text("Group A")
                .font(.title)
            HStack {
                Button(action: {
                    if results.GroupAWinner.isEmpty{
                        results.GroupAWinner = "Netherlands"
                    }else if results.GroupASecond.isEmpty && results.GroupAWinner != "Netherlands"{
                        results.GroupASecond = "Netherlands"
                    }
                }) {
                    Image("Netherlands")
                        .resizable()
                        .frame(width: 90, height: 90)
                }
                Button(action: {
                    if results.GroupAWinner.isEmpty{
                        results.GroupAWinner = "Senegal"
                    }else if results.GroupASecond.isEmpty && results.GroupAWinner != "Senegal"{
                        results.GroupASecond = "Senegal"
                    }
                }) {
                    Image("Senegal")
                        .resizable()
                        .frame(width: 90, height: 90)
                }
                Button(action: {
                    if results.GroupAWinner.isEmpty{
                        results.GroupAWinner = "Ecuador"
                    }else if results.GroupASecond.isEmpty && results.GroupAWinner != "Ecuador"{
                        results.GroupASecond = "Ecuador"
                    }
                }) {
                    Image("Ecuador")
                        .resizable()
                        .frame(width: 90, height: 90)
                }
                Button(action: {
                    if results.GroupAWinner.isEmpty{
                        results.GroupAWinner = "Qatar"
                    }else if results.GroupASecond.isEmpty && results.GroupAWinner != "Qatar"{
                        results.GroupASecond = "Qatar"
                    }
                }) {
                    Image("Qatar")
                        .resizable()
                        .frame(width: 90, height: 90)
                }
            }
            Text("Group winner: \(results.GroupAWinner)")
                .padding(.trailing, 150)
                .fixedSize(horizontal: false, vertical: true)
            Text("Runner up: \(results.GroupASecond)")
                .padding(.trailing, 150)
            Spacer(minLength: 300)
            HStack{
                Button(action: {
                    results.GroupAWinner = ""
                    results.GroupASecond = ""
                }) {
                    Text("Clear")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                        .border(Color.white, width: 2)
                }
                .padding(.leading, 50)
                Spacer()
                Button(action: {
                    if !results.GroupAWinner.isEmpty && !results.GroupASecond.isEmpty{
                        self.showNextView.toggle()
                    }
                }) {
                    Text("Next")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                        .border(Color.white, width: 2)
                }
                .padding(.trailing, 50)
                .sheet(isPresented: self.$showNextView){
                    GroupBView(results: $results)
                }
            }
        }
    }
}
    
struct ContentView: View {
    var body: some View {
        HomePage()
    }
}
    
    struct GroupBView: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Group B")
                Spacer()
                Text("Group B")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.GroupBWinner.isEmpty{
                            results.GroupBWinner = "England"
                        }else if results.GroupBSecond.isEmpty && results.GroupBWinner != "England"{
                            results.GroupBSecond = "England"
                        }
                    }) {
                        Image("England")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupBWinner.isEmpty{
                            results.GroupBWinner = "USA"
                        }else if results.GroupBSecond.isEmpty && results.GroupBWinner != "USA"{
                            results.GroupBSecond = "USA"
                        }
                    }) {
                        Image("USA")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupBWinner.isEmpty{
                            results.GroupBWinner = "Wales"
                        }else if results.GroupBSecond.isEmpty && results.GroupBWinner != "Wales"{
                            results.GroupBSecond = "Wales"
                        }
                    }) {
                        Image("Wales")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupBWinner.isEmpty{
                            results.GroupBWinner = "Iran"
                        }else if results.GroupBSecond.isEmpty && results.GroupBWinner != "Iran"{
                            results.GroupBSecond = "Iran"
                        }
                    }) {
                        Image("Iran")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Group winner: \(results.GroupBWinner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Text("Runner up: \(results.GroupBSecond)")
                    .padding(.trailing, 150)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.GroupBWinner = ""
                        results.GroupBSecond = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.GroupBWinner.isEmpty && !results.GroupBSecond.isEmpty{
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        GroupCView(results: $results)
                    }
                }
            }
        }
    }
    
    struct GroupCView: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Group C")
                Spacer()
                Text("Group C")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.GroupCWinner.isEmpty{
                            results.GroupCWinner = "Argentina"
                        }else if results.GroupCSecond.isEmpty && results.GroupCWinner != "Argentina"{
                            results.GroupCSecond = "Argentina"
                        }
                    }) {
                        Image("Argentina")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupCWinner.isEmpty{
                            results.GroupCWinner = "Poland"
                        }else if results.GroupCSecond.isEmpty && results.GroupCWinner != "Poland"{
                            results.GroupCSecond = "Poland"
                        }
                    }) {
                        Image("Poland")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupCWinner.isEmpty{
                            results.GroupCWinner = "Mexico"
                        }else if results.GroupCSecond.isEmpty && results.GroupCWinner != "Mexico"{
                            results.GroupCSecond = "Mexico"
                        }
                    }) {
                        Image("Mexico")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupCWinner.isEmpty{
                            results.GroupCWinner = "Saudi Arabia"
                        }else if results.GroupCSecond.isEmpty && results.GroupCWinner != "Saudi Arabia"{
                            results.GroupCSecond = "Saudi Arabia"
                        }
                    }) {
                        Image("Saudi Arabia")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Group winner: \(results.GroupCWinner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Text("Runner up: \(results.GroupCSecond)")
                    .padding(.trailing, 150)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.GroupCWinner = ""
                        results.GroupCSecond = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.GroupCWinner.isEmpty && !results.GroupCSecond.isEmpty{
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        GroupDView(results: $results)
                    }
                }
            }
        }
    }
    
    struct GroupDView: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        
        
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Group D")
                Spacer()
                Text("Group D")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.GroupDWinner.isEmpty{
                            results.GroupDWinner = "France"
                        }else if results.GroupDSecond.isEmpty && results.GroupDWinner != "France"{
                            results.GroupDSecond = "France"
                        }
                    }) {
                        Image("France")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupDWinner.isEmpty{
                            results.GroupDWinner = "Australia"
                        }else if results.GroupDSecond.isEmpty && results.GroupDWinner != "Australia"{
                            results.GroupDSecond = "Australia"
                        }
                    }) {
                        Image("Australia")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupDWinner.isEmpty{
                            results.GroupDWinner = "Tunisia"
                        }else if results.GroupDSecond.isEmpty && results.GroupDWinner != "Tunisia"{
                            results.GroupDSecond = "Tunisia"
                        }
                    }) {
                        Image("Tunisia")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupDWinner.isEmpty{
                            results.GroupDWinner = "Denmark"
                        }else if results.GroupDSecond.isEmpty && results.GroupDWinner != "Denmark"{
                            results.GroupDSecond = "Denmark"
                        }
                    }) {
                        Image("Denmark")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Group winner: \(results.GroupDWinner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Text("Runner up: \(results.GroupDSecond)")
                    .padding(.trailing, 150)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.GroupDWinner = ""
                        results.GroupDSecond = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.GroupDWinner.isEmpty && !results.GroupDSecond.isEmpty{
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        GroupEView(results: $results)
                    }
                }
            }
        }
    }
    
    struct GroupEView: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        
        
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Group E")
                Spacer()
                Text("Group E")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.GroupEWinner.isEmpty{
                            results.GroupEWinner = "Japan"
                        }else if results.GroupESecond.isEmpty && results.GroupEWinner != "Japan"{
                            results.GroupESecond = "Japan"
                        }
                    }) {
                        Image("Japan")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupEWinner.isEmpty{
                            results.GroupEWinner = "Spain"
                        }else if results.GroupESecond.isEmpty && results.GroupEWinner != "Spain"{
                            results.GroupESecond = "Spain"
                        }
                    }) {
                        Image("Spain")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupEWinner.isEmpty{
                            results.GroupEWinner = "Germany"
                        }else if results.GroupESecond.isEmpty && results.GroupEWinner != "Germany"{
                            results.GroupESecond = "Germany"
                        }
                    }) {
                        Image("Germany")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupEWinner.isEmpty{
                            results.GroupEWinner = "Costa Rica"
                        }else if results.GroupESecond.isEmpty && results.GroupEWinner != "Costa Rica"{
                            results.GroupESecond = "Costa Rica"
                        }
                    }) {
                        Image("Costa Rica")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Group winner: \(results.GroupEWinner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Text("Runner up: \(results.GroupESecond)")
                    .padding(.trailing, 150)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.GroupEWinner = ""
                        results.GroupESecond = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.GroupEWinner.isEmpty && !results.GroupESecond.isEmpty{
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        GroupFView(results: $results)
                    }
                }
            }
        }
    }
    
    struct GroupFView: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        
        
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Group F")
                Spacer()
                Text("Group F")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.GroupFWinner.isEmpty{
                            results.GroupFWinner = "Morocco"
                        }else if results.GroupFSecond.isEmpty && results.GroupFWinner != "Morocco"{
                            results.GroupFSecond = "Morocco"
                        }
                    }) {
                        Image("Morocco")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupFWinner.isEmpty{
                            results.GroupFWinner = "Croatia"
                        }else if results.GroupFSecond.isEmpty && results.GroupFWinner != "Croatia"{
                            results.GroupFSecond = "Croatia"
                        }
                    }) {
                        Image("Croatia")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupFWinner.isEmpty{
                            results.GroupFWinner = "Belgium"
                        }else if results.GroupFSecond.isEmpty && results.GroupFWinner != "Belgium"{
                            results.GroupFSecond = "Belgium"
                        }
                    }) {
                        Image("Belgium")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupFWinner.isEmpty{
                            results.GroupFWinner = "Canada"
                        }else if results.GroupFSecond.isEmpty && results.GroupFWinner != "Canada"{
                            results.GroupFSecond = "Canada"
                        }
                    }) {
                        Image("Canada")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Group winner: \(results.GroupFWinner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Text("Runner up: \(results.GroupFSecond)")
                    .padding(.trailing, 150)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.GroupFWinner = ""
                        results.GroupFSecond = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.GroupFWinner.isEmpty && !results.GroupFSecond.isEmpty{
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        GroupGView(results: $results)
                    }
                }
            }
        }
    }
    
    struct GroupGView: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        
        
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Group G")
                Spacer()
                Text("Group G")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.GroupGWinner.isEmpty{
                            results.GroupGWinner = "Brazil"
                        }else if results.GroupGSecond.isEmpty && results.GroupGWinner != "Brazil"{
                            results.GroupGSecond = "Brazil"
                        }
                    }) {
                        Image("Brazil")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupGWinner.isEmpty{
                            results.GroupGWinner = "Switzerland"
                        }else if results.GroupGSecond.isEmpty && results.GroupGWinner != "Switzerland"{
                            results.GroupGSecond = "Switzerland"
                        }
                    }) {
                        Image("Switzerland")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupGWinner.isEmpty{
                            results.GroupGWinner = "Cameroon"
                        }else if results.GroupGSecond.isEmpty && results.GroupGWinner != "Cameroon"{
                            results.GroupGSecond = "Cameroon"
                        }
                    }) {
                        Image("Cameroon")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupGWinner.isEmpty{
                            results.GroupGWinner = "Serbia"
                        }else if results.GroupGSecond.isEmpty && results.GroupGWinner != "Serbia"{
                            results.GroupGSecond = "Serbia"
                        }
                    }) {
                        Image("Serbia")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Group winner: \(results.GroupGWinner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Text("Runner up: \(results.GroupGSecond)")
                    .padding(.trailing, 150)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.GroupGWinner = ""
                        results.GroupGSecond = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.GroupGWinner.isEmpty && !results.GroupGSecond.isEmpty{
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        GroupHView(results: $results)
                    }
                }
            }
        }
    }
    
    struct GroupHView: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        
        
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Group H")
                Spacer()
                Text("Group H")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.GroupHWinner.isEmpty{
                            results.GroupHWinner = "Portugal"
                        }else if results.GroupHSecond.isEmpty && results.GroupHWinner != "Portugal"{
                            results.GroupHSecond = "Portugal"
                        }
                    }) {
                        Image("Portugal")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupHWinner.isEmpty{
                            results.GroupHWinner = "South Korea"
                        }else if results.GroupHSecond.isEmpty && results.GroupHWinner != "South Korea"{
                            results.GroupHSecond = "South Korea"
                        }
                    }) {
                        Image("South Korea")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupHWinner.isEmpty{
                            results.GroupHWinner = "Uruguay"
                        }else if results.GroupHSecond.isEmpty && results.GroupHWinner != "Uruguay"{
                            results.GroupHSecond = "Uruguay"
                        }
                    }) {
                        Image("Uruguay")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.GroupHWinner.isEmpty{
                            results.GroupHWinner = "Ghana"
                        }else if results.GroupHSecond.isEmpty && results.GroupHWinner != "Ghana"{
                            results.GroupHSecond = "Ghana"
                        }
                    }) {
                        Image("Ghana")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Group winner: \(results.GroupHWinner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Text("Runner up: \(results.GroupHSecond)")
                    .padding(.trailing, 150)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.GroupHWinner = ""
                        results.GroupHSecond = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.GroupHWinner.isEmpty && !results.GroupHSecond.isEmpty{
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro16Match1View(results: $results)
                    }
                }
            }
        }
    }
    
    
    struct Ro16Match1View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Round of 16")
                Spacer()
                Text("Match 1")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro16Match1Winner.isEmpty{
                            results.ro16Match1Winner = results.GroupAWinner
                        }
                    }) {
                        Image(results.GroupAWinner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro16Match1Winner.isEmpty{
                            results.ro16Match1Winner = results.GroupBSecond
                        }
                    }) {
                        Image(results.GroupBSecond)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro16Match1Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro16Match1Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro16Match1Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro16Match2View(results: $results)
                    }
                }
            }
        }
    }
    
    struct Ro16Match2View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Round of 16")
                Spacer()
                Text("Match 2")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro16Match2Winner.isEmpty{
                            results.ro16Match2Winner = results.GroupCWinner
                        }
                    }) {
                        Image(results.GroupCWinner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro16Match2Winner.isEmpty{
                            results.ro16Match2Winner = results.GroupDSecond
                        }
                    }) {
                        Image(results.GroupDSecond)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro16Match2Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro16Match2Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro16Match2Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro16Match3View(results: $results)
                    }
                }
            }
        }
    }
    
    struct Ro16Match3View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Round of 16")
                Spacer()
                Text("Match 3")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro16Match3Winner.isEmpty{
                            results.ro16Match3Winner = results.GroupEWinner
                        }
                    }) {
                        Image(results.GroupEWinner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro16Match3Winner.isEmpty{
                            results.ro16Match3Winner = results.GroupFSecond
                        }
                    }) {
                        Image(results.GroupFSecond)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro16Match3Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro16Match3Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro16Match3Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro16Match4View(results: $results)
                    }
                }
            }
        }
    }
    
    struct Ro16Match4View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Round of 16")
                Spacer()
                Text("Match 4")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro16Match4Winner.isEmpty{
                            results.ro16Match4Winner = results.GroupGWinner
                        }
                    }) {
                        Image(results.GroupGWinner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro16Match4Winner.isEmpty{
                            results.ro16Match4Winner = results.GroupHSecond
                        }
                    }) {
                        Image(results.GroupHSecond)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro16Match4Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro16Match4Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro16Match4Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro16Match5View(results: $results)
                    }
                }
            }
        }
    }
    
    struct Ro16Match5View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Round of 16")
                Spacer()
                Text("Match 5")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro16Match5Winner.isEmpty{
                            results.ro16Match5Winner = results.GroupDWinner
                        }
                    }) {
                        Image(results.GroupDWinner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro16Match5Winner.isEmpty{
                            results.ro16Match5Winner = results.GroupCSecond
                        }
                    }) {
                        Image(results.GroupCSecond)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro16Match5Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro16Match5Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro16Match5Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro16Match6View(results: $results)
                    }
                }
            }
        }
    }
    
    
    struct Ro16Match6View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Round of 16")
                Spacer()
                Text("Match 6")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro16Match6Winner.isEmpty{
                            results.ro16Match6Winner = results.GroupBWinner
                        }
                    }) {
                        Image(results.GroupBWinner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro16Match6Winner.isEmpty{
                            results.ro16Match6Winner = results.GroupASecond
                        }
                    }) {
                        Image(results.GroupASecond)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro16Match6Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro16Match6Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro16Match6Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro16Match7View(results: $results)
                    }
                }
            }
        }
    }
    
    struct Ro16Match7View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Round of 16")
                Spacer()
                Text("Match 7")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro16Match7Winner.isEmpty{
                            results.ro16Match7Winner = results.GroupFWinner
                        }
                    }) {
                        Image(results.GroupFWinner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro16Match7Winner.isEmpty{
                            results.ro16Match7Winner = results.GroupESecond
                        }
                    }) {
                        Image(results.GroupESecond)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro16Match7Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro16Match7Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro16Match7Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro16Match8View(results: $results)
                    }
                }
            }
        }
    }
    
    struct Ro16Match8View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Round of 16")
                Spacer()
                Text("Match 8")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro16Match8Winner.isEmpty{
                            results.ro16Match8Winner = results.GroupHWinner
                        }
                    }) {
                        Image(results.GroupHWinner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro16Match8Winner.isEmpty{
                            results.ro16Match8Winner = results.GroupGSecond
                        }
                    }) {
                        Image(results.GroupGSecond)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro16Match8Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro16Match8Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro16Match8Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro8Match1View(results: $results)
                    }
                }
            }
        }
    }
    
    struct Ro8Match1View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Quarter-finals")
                Spacer()
                Text("Match 1")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro8Match1Winner.isEmpty{
                            results.ro8Match1Winner = results.ro16Match1Winner
                        }
                    }) {
                        Image(results.ro16Match1Winner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro8Match1Winner.isEmpty{
                            results.ro8Match1Winner = results.ro16Match2Winner
                        }
                    }) {
                        Image(results.ro16Match2Winner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro8Match1Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro8Match1Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro8Match1Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro8Match2View(results: $results)
                    }
                }
            }
        }
    }
    
    struct Ro8Match2View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Quarter-finals")
                Spacer()
                Text("Match 2")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro8Match2Winner.isEmpty{
                            results.ro8Match2Winner = results.ro16Match3Winner
                        }
                    }) {
                        Image(results.ro16Match3Winner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro8Match2Winner.isEmpty{
                            results.ro8Match2Winner = results.ro16Match4Winner
                        }
                    }) {
                        Image(results.ro16Match4Winner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro8Match2Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro8Match2Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro8Match2Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro8Match3View(results: $results)
                    }
                }
            }
        }
    }
    
    struct Ro8Match3View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Quarter-finals")
                Spacer()
                Text("Match 3")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro8Match3Winner.isEmpty{
                            results.ro8Match3Winner = results.ro16Match5Winner
                        }
                    }) {
                        Image(results.ro16Match5Winner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro8Match3Winner.isEmpty{
                            results.ro8Match3Winner = results.ro16Match6Winner
                        }
                    }) {
                        Image(results.ro16Match6Winner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro8Match3Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro8Match3Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro8Match3Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro8Match4View(results: $results)
                    }
                }
            }
        }
    }
    
    struct Ro8Match4View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Quarter-finals")
                Spacer()
                Text("Match 4")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro8Match4Winner.isEmpty{
                            results.ro8Match4Winner = results.ro16Match7Winner
                        }
                    }) {
                        Image(results.ro16Match7Winner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro8Match4Winner.isEmpty{
                            results.ro8Match4Winner = results.ro16Match8Winner
                        }
                    }) {
                        Image(results.ro16Match8Winner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro8Match4Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro8Match4Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro8Match4Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro4Match1View(results: $results)
                    }
                }
            }
        }
    }
    
    struct Ro4Match1View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Semi-finals")
                Spacer()
                Text("Match 1")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro4Match1Winner.isEmpty{
                            results.ro4Match1Winner = results.ro8Match1Winner
                        }
                    }) {
                        Image(results.ro8Match1Winner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro4Match1Winner.isEmpty{
                            results.ro4Match1Winner = results.ro8Match2Winner
                        }
                    }) {
                        Image(results.ro8Match2Winner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro4Match1Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro4Match1Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro4Match1Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro4Match2View(results: $results)
                    }
                }
            }
        }
    }
    
    struct Ro4Match2View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Semi-finals")
                Spacer()
                Text("Match 2")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro4Match2Winner.isEmpty{
                            results.ro4Match2Winner = results.ro8Match3Winner
                        }
                    }) {
                        Image(results.ro8Match3Winner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro4Match2Winner.isEmpty{
                            results.ro4Match2Winner = results.ro8Match4Winner
                        }
                    }) {
                        Image(results.ro8Match4Winner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro4Match2Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro4Match2Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro4Match2Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        Ro2Match1View(results: $results)
                    }
                }
            }
        }
    }
    
    struct Ro2Match1View: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View{
            VStack {
                Text("World cup predictor 2022")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                Text("Finals")
                Spacer()
                Text("Final")
                    .font(.title)
                HStack {
                    Button(action: {
                        if results.ro2Match1Winner.isEmpty{
                            results.ro2Match1Winner = results.ro4Match1Winner
                        }
                    }) {
                        Image(results.ro4Match1Winner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                    Button(action: {
                        if results.ro2Match1Winner.isEmpty{
                            results.ro2Match1Winner = results.ro4Match2Winner
                        }
                    }) {
                        Image(results.ro4Match2Winner)
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                Text("Winner: \(results.ro2Match1Winner)")
                    .padding(.trailing, 150)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer(minLength: 300)
                HStack{
                    Button(action: {
                        results.ro2Match1Winner = ""
                    }) {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    Button(action: {
                        if !results.ro2Match1Winner.isEmpty {
                            self.showNextView.toggle()
                        }
                    }) {
                        Text("Next")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .border(Color.white, width: 2)
                    }
                    .padding(.trailing, 50)
                    .sheet(isPresented: self.$showNextView){
                        BracketView(results: $results)
                    }
                }
            }
        }
    }
    
    
    struct BracketView: View {
        @Binding var results: GroupResults
        @State private var showNextView = false
        var body: some View {       
            Text("World Cup predictor 2022 ")
                .font(.largeTitle)
                .frame(maxWidth: 380, alignment: .topLeading)
                .clipped()
                .padding(.bottom, 726)
                .overlay {
                    HStack {
                        Image(results.ro16Match1Winner)
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                            .clipped()
                            .padding(.bottom, 530)
                            .padding(.trailing, 280)
                            .overlay {
                                Group {
                                    Group {
                                        Image(results.ro16Match2Winner)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                            .padding(.bottom, 530)
                                            .padding(.trailing, 100)
                                        Image(results.ro16Match5Winner)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                            .padding(.top, 530)
                                            .padding(.trailing, 100)
                                        Image(results.ro16Match7Winner)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                            .padding(.top, 530)
                                            .padding(.leading, 100)
                                        Image(results.ro16Match8Winner)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                            .padding(.top, 530)
                                            .padding(.leading, 280)
                                        Image(results.ro16Match6Winner)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                            .padding(.top, 530)
                                            .padding(.trailing, 280)
                                        Image(results.ro16Match3Winner)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                            .padding(.bottom, 530)
                                            .padding(.leading, 100)
                                        Image(results.ro16Match4Winner)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                            .padding(.bottom, 530)
                                            .padding(.leading, 280)
                                        Image(results.ro8Match3Winner)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                            .padding(.top, 350)
                                            .padding(.trailing, 180)
                                        Image(results.ro8Match1Winner)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                            .padding(.bottom, 350)
                                            .padding(.trailing, 180)
                                        Image(results.ro8Match2Winner)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                            .padding(.bottom, 350)
                                            .padding(.leading, 180)
                                    }
                                    Group {
                                        Image(results.ro8Match4Winner)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                            .padding(.top, 350)
                                            .padding(.leading, 180)
                                        Image(results.ro4Match1Winner)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                            .padding(.bottom, 180)
                                        Image(results.ro4Match2Winner)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                            .padding(.top, 180)
                                        Image(results.ro2Match1Winner)
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                            .padding(.leading, 180)
                                        Rectangle()
                                            .fill(.primary)
                                            .frame(width: 30, height: 5)
                                            .clipped()
                                            .padding(.bottom, 530)
                                            .padding(.leading, 200)
                                        Rectangle()
                                            .fill(.primary)
                                            .frame(width: 30, height: 5)
                                            .clipped()
                                            .padding(.top, 530)
                                            .padding(.leading, 200)
                                        Rectangle()
                                            .fill(.primary)
                                            .frame(width: 30, height: 5)
                                            .clipped()
                                            .padding(.top, 530)
                                            .padding(.trailing, 200)
                                        Rectangle()
                                            .fill(.primary)
                                            .frame(width: 30, height: 5)
                                            .clipped()
                                            .padding(.bottom, 530)
                                            .padding(.trailing, 200)
                                        Rectangle()
                                            .fill(.primary)
                                            .frame(width: 110, height: 5)
                                            .clipped()
                                            .padding(.bottom, 350)
                                        Rectangle()
                                            .fill(.primary)
                                            .frame(width: 5, height: 130)
                                            .clipped()
                                        
                                    }
                                    Group {
                                        Rectangle()
                                            .fill(.primary)
                                            .frame(width: 50, height: 5)
                                            .clipped()
                                            .padding(.leading, 52)
                                        Rectangle()
                                            .fill(.primary)
                                            .frame(width: 110, height: 5)
                                            .clipped()
                                            .padding(.top, 350)
                                        Button(action: {
                                            results.reset()
                                            self.showNextView.toggle()
                                        }) {
                                            Image("Go button")
                                                .renderingMode(.original)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 350, height: 50)
                                                .clipped()
                                                .padding(.leading, 270)
                                                .padding(.top, 680)
                                            
                                        }
                                        .sheet(isPresented: self.$showNextView){
                                            HomePage()
                                        }
                                    
                                        
                                    }
                                    
                                }
                                
                            }
                        
                        
                    }
                    
                }
            
        }
        
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
