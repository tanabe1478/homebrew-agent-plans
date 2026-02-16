cask "agent-plans" do
  version "0.2.3"
  sha256 "cd7d6fc9de9e9f1115e4116983fe61d854177dc2d1a671430e46d56860e73642"

  url "https://github.com/tanabe1478/agent-plans/releases/download/v#{version}/agent-plans-#{version}-mac-arm64.dmg"
  name "agent-plans"
  desc "Agent Plans Manager for Markdown plan workflows"
  homepage "https://github.com/tanabe1478/agent-plans"

  depends_on arch: :arm64

  app "agent-plans.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/agent-plans.app"],
                   sudo: false
  end

  caveats <<~EOS
    This build is currently unsigned.
    If macOS blocks first launch, open the app via right-click -> Open,
    or allow it from System Settings > Privacy & Security.
  EOS
end
