require 'formula'

class Rebar < Formula
  head "https://github.com/basho/rebar.git"
  homepage 'https://github.com/rebar/rebar'

  depends_on 'erlang'

  def install
    system './bootstrap'
    bin.install 'rebar'
  end

  test do
    system 'rebar', '--version'
  end
end
