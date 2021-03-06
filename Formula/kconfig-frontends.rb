class KconfigFrontends < Formula
  desc "Kernel configuration frontends and parser"
  homepage "http://ymorin.is-a-geek.org/projects/kconfig-frontends"
  url "http://ymorin.is-a-geek.org/download/kconfig-frontends/kconfig-frontends-4.11.0.1.tar.bz2"
  sha256 "005ec4990cdae02f5ca4a1cf6cb05f4fefa64d3ae23f97e28b22e5547b022739"

  def install
    system "./configure",
        "--disable-debug",
        "--disable-dependency-tracking",
        "--disable-nconf",
        "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

end
