# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SshAgentMultiplexer < Formula
  desc "ssh-agent-multiplexer: a small program which multiplexes running ssh agents"
  homepage "https://github.com/everpeace/ssh-agent-multiplexer"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/everpeace/ssh-agent-multiplexer/releases/download/v0.6.0/ssh-agent-multiplexer_0.6.0_darwin_amd64.tar.gz"
      sha256 "506fdc23108165b405de2845029e23b3a702a68a15c8a86d6c7a89c86579e81b"

      def install
        bin.install "ssh-agent-multiplexer"
        bin.install "ssh-agent-mux-select"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/everpeace/ssh-agent-multiplexer/releases/download/v0.6.0/ssh-agent-multiplexer_0.6.0_darwin_arm64.tar.gz"
      sha256 "5ac8d79bdee436a0e6a8c8dbfa53cbfc3c061ac4b48d6de890e7780b53a64cc2"

      def install
        bin.install "ssh-agent-multiplexer"
        bin.install "ssh-agent-mux-select"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/everpeace/ssh-agent-multiplexer/releases/download/v0.6.0/ssh-agent-multiplexer_0.6.0_linux_amd64.tar.gz"
      sha256 "9cfd35a1c57919b886d9df5a85b7366d93adf73bc3d54d13152b85321a4c72dd"
      def install
        bin.install "ssh-agent-multiplexer"
        bin.install "ssh-agent-mux-select"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/everpeace/ssh-agent-multiplexer/releases/download/v0.6.0/ssh-agent-multiplexer_0.6.0_linux_arm64.tar.gz"
      sha256 "2b3e20e02f54a436c8a1560d79857b7d1c56c905b7ca32af1ee3145b9e33e633"
      def install
        bin.install "ssh-agent-multiplexer"
        bin.install "ssh-agent-mux-select"
      end
    end
  end

  service do
    run [opt_bin/"ssh-agent-multiplexer", "run"]
    keep_alive true
    working_dir HOMEBREW_PREFIX
    log_path var/"log/ssh-agent-multiplexer.log"
    error_log_path var/"log/ssh-agent-multiplexer.log"
  end
end
