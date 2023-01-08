import SwiftUI
import AlgoFullgoLogin

@main
struct AlgoFullgoApp: App {
  var body: some Scene {
    WindowGroup {
      LoginView(coordinator: AppleLoginCoordinator())
    }
  }
}
