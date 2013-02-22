# Dotfiles
A collection of dotfiles for zsh, vim, and osx that can be reused, customised and installed with just one command.

## installation

```
  $ curl -L https://raw.github.com/Techwraith/dotfiles/master/bin/install.sh | sh && reset
```

## Vision
Your dotfiles should not be something that you worry about. This repo does two things:

- Makes it stupid simple to get you up and running in a new environment
- Provides you with some simple, beautiful defaults for your terminal

### Oh My ZSH
ZSH is the shell you never knew you always wanted. "Oh My ZSH" gets you up and running with ZSH really quickly. This repo builds on top of OMZ in a few small but nice ways:

- sets you up with a minimal prompt the integrates with git
- gives you some aliases for frequently typed commands
- enables some OMZ plugins by defualt

### SPF13
SPF13 is a great starting point for new vim users and vim veterens alike. It uses Vundle to gracefully manage plugins, and makes sure that they all work well together. This repo adds to it:

- turns on the Solarized theme by default
- adds some node.js specific plugins

## Customization
Often time you'll need to customize your dotfiles per machine. That's cool, just add `.local` to your zsh config files:

```
~/.zsh_aliases.local
~/.zsh_exports.local
~/.zsh_functions.local
```

Sometimes it's useful to have some extra settings for work:

```
~/.zsh_aliases.work
~/.zsh_exports.work
~/.zsh_functions.work
```

## Contributing
These are my personal dotfiles, but I've purposely made it generic so that anyone can use them. If you find something that you think everyone could use, send me a pull request.

#### Roadmap

- Add a minimal .osx that only get's run on Macs
- use Boxen to automatically install/update: iterm2, vim, node, mongodb, redis, postgres, riak, jake, geddy, etc.
- automatically configure iTerm2 to use Solarized
- figure out why I need to reset the shell after installing
- make this work on windows (for the things that can)
