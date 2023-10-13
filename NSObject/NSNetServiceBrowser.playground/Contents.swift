import UIKit

let netServiceBrowser = NetServiceBrowser()
netServiceBrowser.searchForServices(ofType: "_http._tcp.", inDomain: "local.")
