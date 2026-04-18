class HeicBatch < Formula
  desc "Parallel RAW (.ARW) to HEIC batch converter with metadata preservation using macos sips utility"
  homepage "https://github.com/spicydev/heic-batch"
  url "https://github.com/spicydev/heic-batch/archive/refs/tags/v{{VERSION}}.tar.gz"
  version "{{VERSION}}"
  sha256 "{{SHA256}}"

  depends_on "parallel"
  depends_on "exiftool"

  def install
    bin.install "bin/heic-batch"
  end

  test do
    system "#{bin}/heic-batch", "-h"
  end
end