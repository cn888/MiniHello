import SwiftUI

@main
struct MiniHelloApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "iphone.gen3")
                .font(.system(size: 72))
                .foregroundStyle(.tint)

            Text("iOS 构建链路验证成功")
                .font(.title2.bold())
                .multilineTextAlignment(.center)

            Text("这个 App 是在 Linux 上写的代码，\n由 GitHub 的云端 macOS 编译成 IPA。")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)

            Button {
                count += 1
            } label: {
                Label("点了 \(count) 次", systemImage: "hand.tap")
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding(32)
    }
}
