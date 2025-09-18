class ContractCli < Formula
  desc "Command-line tool for smart contract management and deployment"
  homepage "https://github.com/litriggy/contract-cli"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/litriggy/contract-cli/releases/download/v#{version}/contract-cli-macos-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"  # Will be updated automatically
    end
    if Hardware::CPU.intel?
      url "https://github.com/litriggy/contract-cli/releases/download/v#{version}/contract-cli-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_X86_64_SHA256"  # Will be updated automatically
    end
  end

  def install
    bin.install "contract-cli"
  end

  test do
    system "#{bin}/contract-cli", "--version"
  end
end