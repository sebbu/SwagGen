import PackageDescription

let package = Package(
    name: "Petstore",
    dependencies: [
        .Package(url: "https://github.com/yonaskolb/JSONUtilities.git", "3.3.8"),
        .Package(url: "https://github.com/Alamofire/Alamofire.git", "4.4.0"),
        .Package(url: "https://github.com/antitypical/Result.git", "3.2.1"),
    ]
)
