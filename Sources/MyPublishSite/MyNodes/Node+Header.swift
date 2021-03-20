

import Plot

extension Node where Context == HTML.BodyContext {
    private static var sections: [MyPublishSite.SectionID] { [ MyPublishSite.SectionID.videos, MyPublishSite.SectionID.about, MyPublishSite.SectionID.resume] }
    
    static func header(for site: MyPublishSite) -> Node {
        return .div(
            .div(
                .class("pure-menu pure-menu-horizontal pure-u-1-1 top-header"),
                .a(
                    .class("pure-menu-heading"),
                    .text(site.title),
                    .href("/")
                ),
                .ul(
                    .class("pure-menu-list"),
                    .forEach(sections, { section in
                        .li(
                            .class("pure-menu-item"),
                            .a(
                                .class("pure-menu-link"),
                                .text(section.rawValue.capitalized),
                                .href(site.path(for: section))
                            )
                        )
                    })
                )
            )
        )
    }
}
