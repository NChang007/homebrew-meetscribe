class Meetscribe < Formula
  desc "Bot-free, on-device meeting transcription for macOS"
  homepage "https://github.com/NChang007/meetscribe"
  version "0.1.0"
  license "MIT"

  on_arm do
    url "https://github.com/NChang007/meetscribe/releases/download/v0.1.0/meetscribe-darwin-arm64.tar.gz"
    sha256 "0e583ef03fc8473527a6289ee652ec91efbde0e328a8f474380756b2e318fd5e"
  end

  depends_on :macos

  def install
    bin.install "meetscribe"
  end

  def caveats
    <<~EOS
      First-time setup (downloads ~1GB on-device models, not your audio):
        meetscribe init

      Skip models (air-gapped):
        meetscribe init --skip-models

      Permissions are requested automatically on first record:
        meetscribe record start --title "My meeting"
    EOS
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/meetscribe --version"))
  end
end
