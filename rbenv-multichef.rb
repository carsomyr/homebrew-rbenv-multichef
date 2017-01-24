# -*- coding: utf-8 -*-
#
# Copyright 2014 Roy Liu
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy of
# the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.

# A Homebrew formula for the plugin.

require "formula"
require "pathname"

class RbenvMultichef < Formula
  homepage "https://github.com/carsomyr/rbenv-multichef"
  url "https://github.com/carsomyr/rbenv-multichef/archive/0.9.2.tar.gz"
  sha256 "2f43b9019c2b850429a2712ead89ec36c87b75186dffad1f403483a8a2dca4bc"
  head "https://github.com/carsomyr/rbenv-multichef.git"

  depends_on "rbenv"

  def install
    prefix.install Pathname.glob("*").map { |path| path.to_s }
  end
end
