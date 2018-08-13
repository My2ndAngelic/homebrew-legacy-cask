# homebrew-cask-legacy
[![Build Status](https://travis-ci.com/My2ndAngelic/homebrew-cask-legacy.svg?branch=master)](https://travis-ci.com/My2ndAngelic/homebrew-cask-legacy)

Here you'll find another alternate versions of Casks for the [homebrew-cask](https://github.com/Homebrew/homebrew-cask)
project. 

## Noticeboard
>Currently I am the only maintainer to this project. There is go guarantee that this tap will not collide or conflict with [homebrew-cask](https://github.com/Homebrew/homebrew-cask) or [homebrew-cask-legacy](https://github.com/Homebrew/homebrew-cask-legacy). I will try to clean up all the files and rewrite all the documents if I have time. Sorry if there is some copyright infringement files left like some README.md or some guides leftover from main homebrew. I will try to clean those as well.
> 
> Please refer to the FAQ if you have more questions about this.
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

## License
Homebrew's original code is under the [BSD 2 Clause (NetBSD) license](https://github.com/My2ndAngelic/homebrew-cask-legacy/blob/master/LICENSE-ORIGINAL)

Our own code is under [WPL](https://github.com/My2ndAngelic/homebrew-cask-legacy/blob/master/LICENSE-MODIFIED).
