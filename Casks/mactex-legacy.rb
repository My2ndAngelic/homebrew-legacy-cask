cask 'mactex-legacy' do
  def filename(*var)
    var
  end

  if MacOS.version <= :tiger
    version '2010.0907'
    filename "MacTeX-#{version.major}.mpkg"
    sha256 '9021e3cf9ad5965a53effeafc160b223101076bdbadb254dc6fa42fce4a2d1ab'
    url "ftp://ftp.tug.org/historic/systems/mactex/#{version.major}/mactex#{version.no_dots}.zip"
  elsif MacOS.version <= :mavericks
    version '2016.1009'
    filename "mactex-#{version.no_dots}.pkg"
    sha256 'b44873d445881900401d0e0eddccc78140b9ed51b538364889eb8529350d5bd7'
    url "ftp://ftp.tug.org/historic/systems/mactex/2016/mactex-#{version.no_dots}.pkg"
  else
    version '2018.0417'
    filename "mactex-#{version.no_dots}.pkg"
    sha256 'e6ee8f69ca6e5ca5d20a31afc3dff3b4e5aa7a0b1b89ace9864ac22b10c34b98'
    # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
    url "http://mirror.ctan.org/systems/mac/mactex/mactex-#{version.no_dots}.pkg"
  end

  # Original code
  # License: BSD Clause 2 (NetBSD)
  appcast 'https://www.tug.org/mactex/downloading.html'
  name 'MacTeX'
  homepage 'https://www.tug.org/mactex/'

  conflicts_with cask: [
                         'basictex',
                         'mactex-no-gui',
                       ]

  pkg filename.to_s,
      choices: [
                 {
                   # TeXLive
                   'choiceIdentifier' => 'choice1',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   # GUI-Applications
                   'choiceIdentifier' => 'choice2',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   # Ghostscript
                   'choiceIdentifier' => 'choice3',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]

  uninstall pkgutil: [
                       "org.tug.mactex.gui#{version.major}",
                       "org.tug.mactex.texlive#{version.major}",
                     ],
            delete:  [
                       "/usr/local/texlive/#{version.major}",
                       '/Applications/TeX',
                       '/Library/PreferencePanes/TeXDistPrefPane.prefPane',
                       '/Library/TeX',
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                     ]

  zap trash: [
               '/usr/local/texlive/texmf-local',
               "~/Library/texlive/#{version.major}",
               # TexShop:
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texshop.sfl*',
               '~/Library/Application Support/TeXShop',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeXShop Help*',
               '~/Library/Caches/TeXShop',
               '~/Library/Preferences/TeXShop.plist',
               '~/Library/TeXShop',
               # BibDesk:
               '~/Library/Application Support/BibDesk',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/edu.ucsd.cs.mmccrack.bibdesk.help*',
               '~/Library/Caches/edu.ucsd.cs.mmccrack.bibdesk',
               '~/Library/Cookies/edu.ucsd.cs.mmccrack.bibdesk.binarycookies',
               '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
               # LaTeXiT:
               '~/Library/Caches/fr.chachatelier.pierre.LaTeXiT',
               '~/Library/Cookies/fr.chachatelier.pierre.LaTeXiT.binarycookies',
               '~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist',
               # TeX Live Utility:
               '~/Library/Application Support/TeX Live Utility',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeX Live Utility Help*',
               # Excalibur:
               '~/Library/Preferences/Excalibur Preferences',
               '~/Library/Saved Application State/edu.bucknell.Excalibur.savedState',
             ],
      rmdir: [
               '/usr/local/texlive',
               '~/Library/texlive',
             ]
end
