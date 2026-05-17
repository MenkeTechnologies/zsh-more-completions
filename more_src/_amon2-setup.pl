#compdef amon2-setup.pl
# Documentation: https://metacpan.org/dist/Amon2
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/syohex/zsh-perl-completions/blob/be325132fc53381b596552487f7e0d6637b82781/_amon2-setup.pl
# Repository: syohex/zsh-perl-completions (_amon2-setup.pl)

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

local -a flavors
flavors=($(amon2-setup.pl -l | awk '{print $1}'))

_arguments -n : \
  '*--flavor=[Setup flavor]:flavors:'"($flavors)" \
  '--vc=[Setup the Version Control(Default is git)]: :(Git)' \
  '(- :)'{--list-flavors,-l}'[Shows the list of flavors installed]' \
  '(- :)--help[Show this help]' \
  '*: :()'

# Local Variables:
# mode: Shell-Script
# sh-indentation: 2
# indent-tabs-mode: nil
# sh-basic-offset: 2
# End:
# vim: ft=zsh sw=2 ts=2 et
