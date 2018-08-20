# homebrew-cask-legacy
[![Build Status](https://travis-ci.com/My2ndAngelic/homebrew-cask-legacy.svg?branch=master)](https://travis-ci.com/My2ndAngelic/homebrew-cask-legacy)

Here you'll find another alternate versions of Casks for the [homebrew-cask](https://github.com/Homebrew/homebrew-cask)
project. 

## Noticeboard
> Currently I am the only maintainer to this project. There is go guarantee that this tap will not collide or conflict with [homebrew-cask](https://github.com/Homebrew/homebrew-cask) or [homebrew-cask-legacy](https://github.com/Homebrew/homebrew-cask-legacy). I will try to clean up all the files and rewrite all the documents if I have time. Sorry if there is some copyright infringement files left like some README.md or some guides leftover from main homebrew. I will try to clean those as well.
> 
> I have tested installing Homebrew core by git on Mountain Lion, Lion and Snow Leopard. This is a huge problem since GitHub has switched to TLS v1.2, and only Mavericks and above support this. I will try to move this project to another place as soon as I can ensure that it would run on Mountain Lion and older. I have tested installing Homebrew core by git on Mountain Lion, Lion and Snow Leopard. This is a huge problem since GitHub has switched to TLS v1.2, and only Mavericks and above support this. I will try to move this project to another place as soon as I can ensure that it would run on Mountain Lion and older. 
>
> The naming scheme of each cask will NOT be consistent for now. 
> 
> Please refer to the [FAQ.md](/FAQ.md) if you have more questions. 
>
> *My2ndAngelic*

## Usage
After you install homebrew-cask, run the following command:

```sh
$ brew tap My2ndAngelic/cask-legacy
```

Installing a cask is easy

```sh
$ brew cask install google-chrome-legacy
```

## Acceptable Casks
`My2ndAngelic/homebrew-cask-legacy` is only used to install legacy cask for old macOS version. The current support is from Yosemite and earlier. Please ensure that you have the latest version of you major macOS release

You may wish to consider hosting your own [tap](https://github.com/Homebrew/brew/blob/master/docs/How-to-Create-and-Maintain-a-Tap.md) for casks you wish to personally support that do not meet the above standards.

For this repo, rules are (following our [nomenclature](https://github.com/My2ndAngelic/homebrew-cask-legacy/blob/master/doc/development/adding_a_cask.md#finding-a-home-for-your-cask)):

+ Legacy version only
+ Only support Yosemite and earlier (more to come when Apple discontinues supporting old macOS version)
+ Please consider contribute new version to [homebrew-cask](https://github.com/Homebrew/homebrew-cask) or [homebrew-cask-version](https://github.com/Homebrew/homebrew-cask-version)
+ To avoid conflict with homebrew-cask and homebrew-cask-versions, we have to perform a manual check to ensure that your cask name is not the same as those two taps. 

## License
Homebrew's original code is under [BSD 2 Clause (NetBSD) license](https://github.com/My2ndAngelic/homebrew-cask-legacy/blob/master/LICENSE-ORIGINAL)

This project is under [Do What You Want Public License](https://github.com/My2ndAngelic/homebrew-cask-legacy/blob/master/LICENSE-MODIFIED).
