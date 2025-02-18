# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stm < Formula
  desc "Shopify Theme Manager CLI"
  homepage "https://github.com/colinxr/shopify-theme-manager"
  version "0.0.7-i"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/colinxr/shopify-theme-manager/releases/download/v0.0.7-i/shopify-theme-manager_Darwin_x86_64.tar.gz"
      sha256 "0a74b48ebe89c9f4c3422c7583ca0e85b773aa08792e664e9ccff37d745ebf69"

      def install
        bin.install "shopify-theme-manager"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/colinxr/shopify-theme-manager/releases/download/v0.0.7-i/shopify-theme-manager_Darwin_arm64.tar.gz"
      sha256 "d3d0737c9e60418aba5a45eae46e10171a1dfb9943f34593a337e78bb78a3a56"

      def install
        bin.install "shopify-theme-manager"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/colinxr/shopify-theme-manager/releases/download/v0.0.7-i/shopify-theme-manager_Linux_x86_64.tar.gz"
        sha256 "d7c77f1c017d5f1c7b3d7bcf15e5407948f0f655dae83dd759010ffe3b9086e0"

        def install
          bin.install "shopify-theme-manager"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/colinxr/shopify-theme-manager/releases/download/v0.0.7-i/shopify-theme-manager_Linux_arm64.tar.gz"
        sha256 "683754c12515b35508ecbc3a63fbf2a9c42613f4c67c20dc7b488642334a43ea"

        def install
          bin.install "shopify-theme-manager"
        end
      end
    end
  end

  test do
    system "#{bin}/stm --version"
  end
end
