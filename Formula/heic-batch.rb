class HeicBatch < Formula
  desc "Parallel RAW (.ARW) to HEIC batch converter with metadata preservation using macos sips utility"
  homepage "https://github.com/spicydev/heic-batch"
  url "https://github.com/spicydev/heic-batch/archive/refs/tags/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "fd43cd54f5ad3a124743a8d3235fff53b52c5152b536133edcd8b46293a6546c"

  depends_on "parallel"
  depends_on "exiftool"

  def install
    bin.install "bin/heic-batch"
  end

  test do
    system "#{bin}/heic-batch", "-h"
  end
end