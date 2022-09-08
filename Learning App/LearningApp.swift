//
//  Learning_AppApp.swift
//  Learning App
//
//  Created by Arthur Sh on 08.09.2022.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
