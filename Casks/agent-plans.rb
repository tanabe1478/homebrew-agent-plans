cask "agent-plans" do
  version "0.2.2"
  sha256 "e5295912f4b86ee44b2fbb98f7bff88fdd54607dd08f11c00732fbacc2715689"

  url "https://github.com/tanabe1478/agent-plans/releases/download/v#{version}/agent-plans-#{version}-mac-arm64.dmg"
  name "agent-plans"
  desc "Agent Plans Manager for Markdown plan workflows"
  homepage "https://github.com/tanabe1478/agent-plans"

  depends_on arch: :arm64

  app "agent-plans.app"

  caveats <<~EOS
    This build is currently unsigned.
    If macOS blocks first launch, open the app via right-click -> Open,
    or allow it from System Settings > Privacy & Security.
  EOS
end
