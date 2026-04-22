class HeicBatch < Formula
  desc "Parallel RAW (.ARW) to HEIC batch converter with metadata preservation using macos sips utility"
  homepage "https://github.com/spicydev/heic-batch"
  url "https://github.com/spicydev/heic-batch/archive/refs/tags/v1.5.0.tar.gz"
  version "1.5.0"
  sha256 "0401af7d43697552bf94df2cab762d365877caeb169f4b557ca193a6366d1e71"

  depends_on "parallel"
  depends_on "exiftool"

  def install
    bin.install "bin/heic-batch"
  end

  test do
    system "#{bin}/heic-batch", "-h"
  end
end