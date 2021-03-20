import Foundation
import Publish
import Plot
import SplashPublishPlugin


// This will generate your website using the built-in Foundation theme:
try MyPublishSite().publish(withTheme: .myPublishSite, deployedUsing:.gitHub("jbird84/jbird84.github.io", useSSH: false),
    plugins: [.splash(withClassPrefix: "")])
