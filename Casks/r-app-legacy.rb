# Modified from original, NetBSD license applies.
cask 'r-app-legacy' do
  version '3.3.3'
  sha256 '77d7a145d1f7d5c3f5bd7310ae2beb7349118528d938e519845ce7d205b4c864'

  url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  appcast 'https://www.r-project.org/'
  name 'R'
  homepage 'https://www.r-project.org/'

  depends_on macos: '>= :mavericks'

  pkg "R-#{version}.pkg"

  uninstall pkgutil: 'org.r-project*',
            delete:  [
                       '/Library/Frameworks/R.Framework',
                       '/usr/bin/R',
                       '/usr/bin/Rscript',
                     ]

  zap trash: [
               '~/.R',
               '~/.Rapp.history',
               '~/.RData',
               '~/.Rhistory',
               '~/.Rprofile',
               '~/Library/R',
               '~/Library/Caches/org.R-project.R',
             ]

  caveats do
    files_in_usr_local
  end
end
