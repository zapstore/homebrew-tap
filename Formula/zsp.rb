class Zsp < Formula
  desc "Publish Android apps to Nostr relays for Zapstore"
  homepage "https://zapstore.dev"
  version "2.1.0"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/zapstore/zsp/releases/download/v2.1.0/zsp-2.1.0-darwin-arm64.tar.gz"
    sha256 "ec4542ea6f7edcb9eb1e0f92d9e8166b529ba20ed81d061ad678410b8d9d7834"
  end

  on_linux do
    on_arm do
      url "https://github.com/zapstore/zsp/releases/download/v2.1.0/zsp-2.1.0-linux-arm64.tar.gz"
      sha256 "cd46e9150195f8148a4eda27f6dca9e5acdf6656926e22655f11998841b6061f"
    end
    on_intel do
      url "https://github.com/zapstore/zsp/releases/download/v2.1.0/zsp-2.1.0-linux-amd64.tar.gz"
      sha256 "1cde872df05bbb29a325ec97b68701c89bad6d21404a825ef9d5634f0c1838e7"
    end
  end

  def install
    bin.install "zsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zsp --version")
  end
end
