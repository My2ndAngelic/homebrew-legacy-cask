# FAQ

## Project information

### What is this?
This is a Homebrew tap aims at installing Cask for older macOS version, when Apple and Homebrew stop supporting them. This is a side project since I need to learn how to code in school.

### Why does this exist?
Since Homebrew does not really support "legacy" formulas, the rule also applies for casks. They do, but on some special occasions and [will be removed after one year](https://github.com/Homebrew/homebrew-cask-versions/blob/master/README.md#acceptable-casks). I have a MBP running Mavericks, that's why I created this tap to maintain my own cask.

### Are there any endorsements?
There should be nothing since Homebrew also does not encourage users to run an unsupported macOS version. You can call them OS X/Mac OS if you so wish.

### Why are there two licenses?
Since Homebrew uses BSD Clause 2 license and I also use parts of their source code to run (example: Travis CI check template), I will keep that in [LICENSE-ORIGINAL](./LICENSE-ORIGINAL). All of my own code, as stated in [LICENSE-MODIFIED](./LICENSE-MODIFIED), you can do whatever you want. That is why I uses WTFPL.

### Which one are under NetBSD license?
All files that you can find in [homebrew-cask-versions](https://github.com/Homebrew/homebrew-cask-versions) are under NetBSD.

* Travis CI template
* Pull-request template
* Code of Conduct (maybe)
* Issue report templates
* .gitignore and other .github templates
* Some casks (written inside)

If I forgot to add license to some cask, please open a pull request or an issue to notify me.

### Who are maintaining this?
Currently: [My2ndAngelic](https://github.com/My2ndAngelic). 

### Why WTFPL?
Because WPL is too short for an acronym. I cleaned that license but since the acronym contains no offensive words so I will keep it.

### Why did you choose this name?
I choose this name to describe what it is, to support legacy cask

### How can I become a maintainer? Can I help?
Sure. You can become a maintainer by open an issue if you want. You can also open a pull request if you just want to help.

## Repo issues

### How can I tap this?
Run this on your terminal after you have [installed Homebrew](https://brew.sh).

```sh
brew tap My2ndAngelic/cask-legacy
```

### Does it conflict with the main cask repository?
I cannot guarantee that.

### How can I use `cask-repair` to update this?
Currently I don't think you can. I have not written a script to point that script to main repo. You have to change it as well.

### `X` did not run properly on my version.
Please file an issue for me and I will look at it and include the following:

- Formula name
- Software name
- Mac OS version
- Error message
- Time stamp
- Any other known information
- Useful information (found below)

You can also make a pull request to fix it. It makes thing faster for me as well.

## Formula issues
### Download related
#### curl: (60) SSL certificate problem: Invalid certificate chain
Visit the website with Safari, click `Show certificate` and `Always trust [hostname] when connecting to [hostname]`. This is a problem when your system does not support the certificate since it is an old system and you have to add it to keychain.

#### Download failed
The link is dead. Please search for the new download link or update it. Try again to make sure your internet is working.

#### Checksum does not match
Please check the download file checksum by:

```sh
shasum -a 256 /path/to/file.ext
```

### Installation issue
#### App source is not there
Please check the app name inside the `dmg` file.

#### Package not found
Please check the package name (downloaded package name) and.

### Style issues
#### Unexpected method `name` called on `cask name`
Some formulas did not define method properly. Currently I only know one fix.

Please define your method(s) by
```ruby
cask 'name' do
def methodname(*vars)
 puts vars
end

#[...installation fomula...]
end
```

add the value by
```ruby
methodname = 'string'
```

and call them by
```ruby
# if defined within Homebrew scope
homebrewmethod "somestring#{methodname}" 
anotherhomebrewmethod 'somestring#{methodname}'
# if defined by you above
anothermethod = "somestring#{methodname}"
```

## Other question
### I think you copied our code or forgot to license
Please file an issue and I will clean that up. Sorry if you are coming from the main repo since I have no time to cleanup now.

### I have filed issue/request for `time` and I have not received any answer
I will not guarantee any time to answer it since I too quite busy and not a full time maintainer of this repo.

### My question is not here
Please file an issue and I will look at it.
