import Foundation
import Publish
import Plot
import SplashPublishPlugin


// This will generate your website using the built-in Foundation theme:
try MyPublishSite().publish(withTheme: .myPublishSite, additionalSteps: [.deploy(using: .gitHub("jbird84/j", useSSH: false))],
                            plugins: [.splash(withClassPrefix: "")])
