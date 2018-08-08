# homebrew-cask-legacy

Here you'll find alternate versions of Casks for the [homebrew-cask](https://github.com/Homebrew/homebrew-cask)
project. 

# Usage

After you install homebrew-cask, run the following command:

```sh
$ brew tap My2ndAngelic/cask-legacy
```

Installing a cask is easy

```sh
$ brew cask install iterm2-beta
```

## Acceptable Casks

`My2ndAngelic/homebrew-cask-legacy` is only used to install legacy cask for old macOS version. The current support is from Mavericks and earlier. Please ensure that you have the latest version of you major macOS release

You may wish to consider hosting your own [tap](https://github.com/Homebrew/brew/blob/master/docs/How-to-Create-and-Maintain-a-Tap.md) for casks you wish to personally support that do not meet the above standards.

For this repo, rules are (following our [nomenclature](https://github.com/My2ndAngelic/homebrew-cask-legacy/blob/master/doc/development/adding_a_cask.md#finding-a-home-for-your-cask)):

+ Legacy version only
+ Only support Mavericks and earlier.
+ Please consider contribute new version to [homebrew-cask](https://github.com/Homebrew/homebrew-cask) or [homebrew-cask-version](https://github.com/Homebrew/homebrew-cask-version)

## License
Homebrew's original code is under the [BSD 2 Clause (NetBSD) license](https://github.com/My2ndAngelic/homebrew-cask-legacy/blob/master/LICENSE-ORIGINAL)

My own code in under [WTFPL](https://github.com/My2ndAngelic/homebrew-cask-legacy/blob/master/LICENSE-MODIFIED)

Clarification: Do what you want with my rewrite. If you want to get the parts done by Homebrew then please use their license.