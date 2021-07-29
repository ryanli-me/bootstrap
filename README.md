# Setup
## Step 1 Install common packages
adapted from https://github.com/thoughtbot/laptop/blob/master/mac and https://github.com/joshukraine/mac-bootstrap/blob/master/install/laptop
```
sh mac 2>&1 | tee ~/laptop.log
```
## Step 2 Set up macOS defaults
adapted from https://github.com/joshukraine/mac-bootstrap/blob/master/install/macos-defaults and https://github.com/mathiasbynens/dotfiles/blob/main/.macos
TIMEZONE=America/Los_Angeles ./macos-defaults
## Step 3 Set up Tmuxinator
./tmuxinator

# Bugs
`mac` script is highly coupled with `dotfiles`, relying on correct $PATH for fish and could not link `homebrew` correctly without executing `dotfiles` install script. `fzf` completion might not be correctly installed and asdf might not correctly install ruby.
=> Solution: `git clone git@github.com:ryanli-me/dotfiles.git` first
