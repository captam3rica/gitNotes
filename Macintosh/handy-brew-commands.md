# Handy Homebrew Commands & Syntaxisms

### Install Homebrew

      $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### Uninstall Homebrew

Use the following command from *Terminal* to uninstall *Homebrew*

      $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

`./uninstall --help` to see more uninstall options

### Package Download Location

`brew --cache`

- /Users/$USER/Library/Caches/Homebrew

### Application Locations

- Applications are symlinked here: /usr/local/bin  
- Applications are actually installed here: /usr/local/Cellar

### Update Packages

**Update Homebrew & Core Formulas**

`$ brew update`

**See Outdated Packages**

`brew outdated`

**Upgrade a Specific Package**

`brew upgrade <Package>`

**Upgrade All Packages**

`brew upgrade`

### Cleanup the Homebrew Environment

**Specific files**

`$ brew cleanup <package>`

**Everything**

`$ brew cleanup`

**Take a look at what would be cleaned ...**

`$ brew cleanup -n`

### Troubleshooting

Run `brew update` twice

Then run `brew doctor`
