//
//  File.swift
//  
//
//  Created by Kinney Kare on 3/16/21.
//

import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct MyPublishSite: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case videos
        case about
        case resume
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
       
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var title = "My Publish Site"
    var name = "Josh Kinney"
    var description = "Content-Creator/Developer"
    var language: Language { .english }
    var imagePath: Path? { nil }
    var contactMe: [ContactLink] { [.myLocation, .email, .youTube, .linkedIn, .twitter] }
}
