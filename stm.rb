# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stm < Formula
  desc "Shopify Theme Manager CLI"
  homepage "https://github.com/colinxr/shopify-theme-manager"
  version "0.0.7-h"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/colinxr/shopify-theme-manager/releases/download/v0.0.7-h/shopify-theme-manager_Darwin_x86_64.tar.gz"
      sha256 "31571585d194255f93f9a06be3fd96c710a082a9781507e6eb2da8934d9ca084"

      def install
        bin.install "stm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/colinxr/shopify-theme-manager/releases/download/v0.0.7-h/shopify-theme-manager_Darwin_arm64.tar.gz"
      sha256 "83a3b2f54c8134f91eae6f43bfbb0cec148f0726041873f5fe5b189dcb819b09"

      def install
        bin.install "stm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/colinxr/shopify-theme-manager/releases/download/v0.0.7-h/shopify-theme-manager_Linux_x86_64.tar.gz"
        sha256 "4ed354f9534dc1a206bc227be98ff185513c121b76c525748868a7360b95fc70"

        def install
          bin.install "stm"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/colinxr/shopify-theme-manager/releases/download/v0.0.7-h/shopify-theme-manager_Linux_arm64.tar.gz"
        sha256 "f5ece73b523611ca618964737e79e47e520bb01a4f2e7520e41b025d113c62bc"

        def install
          bin.install "stm"
        end
      end
    end
  end

  test do
    system "#{bin}/stm --version"
  end
end
