//
//  SmokingAppApp.swift
//  SmokingApp
//
//  Created by Андрей Ефимов on 25.02.2022.
//

import SwiftUI

/*
UserDefaults
 score = UserDefaults.standart.integer(forKey: "score") +
 hours = UserDefaults.standard.integer(forKey: "hours") +
 dailyEconomy = UserDefaults.standart.integer(forKey: "dailyEconomy") +
 attempts = score = UserDefaults.standart.integer(forKey: "attempts") +
 
 firstDay = UserDefaults.standard.bool(forKey: "firstDay")
 savedHours = UserDefaults.standart.object(forKey: "savedHours")
 
 isLaunchedBefore = UserDefaults.standart.bool(forKey: "isLaunchedBefore")
 savedTime = UserDefaults.standart.object(forKey: "savedTime")
 
 !!!
 isGoal = UserDefaults.standart.bool(forKey: "isGoal")
 goalValue = UserDefaults.standard.integer(forKey: "goalValue")
 goalName = UserDefaults.standard.string(forKey: "goalName")
*/

@main
struct SmokingAppApp: App {
    
    @StateObject private var isLaunchedBefore = UserData()
    @StateObject private var score = UserData()
    @StateObject private var dailyEconomy = UserData()
    @StateObject private var attempts = UserData()
    @StateObject private var hours = UserData()
    @StateObject private var firstDay = UserData()
    @StateObject private var isGoal = UserData() // does user have an active goal
    @StateObject private var goalValue = UserData() // goal money value
    @StateObject private var goalName = UserData()
    @StateObject private var freeMoney = UserData()
    @StateObject private var goalPicture = UserData()
    @StateObject private var userImage = UserData()
    @StateObject private var userImageBool = UserData()
    @StateObject private var beforeScore = UserData() // user's summary score with all restarts
    @StateObject private var maxScoreHours = UserData() // user's score record in hours
    @StateObject private var beforeMoney = UserData() // user's summary economy with all restarts
    @StateObject private var healthShown = UserData() // is healthDescription shown?
    @StateObject private var alertGoalShown = UserData() // is goal reset alert shown?
    @StateObject private var alertResetShown = UserData() // is hard reset alert shown?
    @StateObject private var mapPointShown = UserData() // which mapPoint is shown?
    
    var body: some Scene {
        WindowGroup {
            firstLaunchLogic()
                .environmentObject(isLaunchedBefore)
                .environmentObject(score)
                .environmentObject(dailyEconomy)
                .environmentObject(attempts)
                .environmentObject(hours)
                .environmentObject(firstDay)
                .environmentObject(isGoal)
                .environmentObject(goalValue)
                .environmentObject(goalName)
                .environmentObject(freeMoney)
                .environmentObject(goalPicture)
                .environmentObject(userImage)
                .environmentObject(userImageBool)
                .environmentObject(beforeScore)
                .environmentObject(maxScoreHours)
                .environmentObject(beforeMoney)
                .environmentObject(healthShown)
                .environmentObject(alertGoalShown)
                .environmentObject(alertResetShown)
                .environmentObject(mapPointShown)
            //startView()
            //.environmentObject(dailyUse)
            //.environmentObject(pricePack)
        }
    }
}
