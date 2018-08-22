=begin
Copyright (c) 2013, Paul Hinze & Contributors
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice, this
  list of conditions and the following disclaimer in the documentation and/or
  other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
=end

# The following code has been modified from original Opera cask from Homebrew. For copright notice, please see the text above.
cask 'opera-latest-legacy' do
  version '56.0.3045.0'
  sha256 'f1278d2b960adb00cd2856cce0e62354f6cf33be0ad63728f8fc2b48cbdedb40'

  url "https://get.opera.com/ftp/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/computer/'

  auto_updates true

  app 'Opera.app'

  zap trash: [
               '~/Library/Application Support/com.operasoftware.OperaDeveloper',
               '~/Library/Caches/com.operasoftware.OperaDeveloper',
               '~/Library/Cookies/com.operasoftware.OperaDeveloper.binarycookies',
               '~/Library/Preferences/com.operasoftware.OperaDeveloper.plist',
               '~/Library/Saved Application State/com.operasoftware.OperaDeveloper.savedState',
             ]
end