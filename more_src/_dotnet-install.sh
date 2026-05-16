#compdef dotnet-install.sh
# Documentation: https://man.archlinux.org/search?q=dotnet-install.sh
# Reference accessed: 2026-05-16
# Source: https://github.com/syohex/zsh-misc-completions/blob/8966e3a82cf3d0f17d2c4d52cc23aababb66d496/dotnet/_dotnet-install.sh
# Repository: syohex/zsh-misc-completions (dotnet/_dotnet-install.sh)

# The MIT License (MIT)
#
# Copyright (c) 2022 Shohei YOSHIDA
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
# ------------------------------------------------------------------------------
# Description
# -----------
#
#  Completion script for dotnet-install.sh (https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-install-script)
#
# ------------------------------------------------------------------------------

_dotnet-install_channel() {
  local -a channels=(
    "STS:the most recent Standard Term Support release"
    "LTS:the most recent Long Term Support release"
  )
  _describe -t "channel" "channel" channels
}

_arguments \
  '--architecture[Architectures of the .NET binaries to install]: :(auto amd64 x64 x86 arm64 arm s390x ppc64le loongarch64)' \
  '--azure-feed[Allows using a different storage to download SDK archives from(internal use only)]' \
  '--channel[Specifies the source channel for the installation]: :_dotnet-install_channel' \
  '--dry-run[The script will not perform the installation]' \
  '--feed-credential[Used as a query string to append to the Azure feed]' \
  '(- *)--help[Show help message]' \
  '--install-dir[Specifies the installation path]: :_files -/' \
  '--jsonfile[Specifies a path to a global.json file that will be used to determine the SDK version]: :_files' \
  '--no-cdn[Disable downloading from the Azure Content Delivery Network]' \
  '--no-path[The installation folder is not exported to the path for the current session]' \
  '--quality[Downloads the latest build of the specified quality in the channel]: :($channel)' \
  '--runtime[Installs just the shared runtime, not the entire SDK]: :(dotnet aspnetcore windowsdesktop)' \
  '--os[Specifies the operating system]: :(osx linux linux-musl freebsd rhel.6)' \
  '--shared-runtime[Installs just the shared runtime bits, not the entire SDK]' \
  '--skip-non-versioned-files[Skips installing non-versioned files]' \
  '--uncached-feed[allows using a different storage to download SDK archives from]' \
  '--keep-zip[keep download file]' \
  '--zip-path[specify the path where downloaded file is stored]:path:_files -g "*.zip"' \
  '--verbose[Displays diagnostics information]' \
  '--version[Represents a specific build version]: :(latest)'

# Local Variables:
# mode: Shell-Script
# sh-indentation: 2
# indent-tabs-mode: nil
# sh-basic-offset: 2
# End:
# vim: ft=zsh sw=2 ts=2 et
