# lubieniebieski/dotfiles

This repository contains my settings (mostly) for bash and irb console. It is based on the following dotfiles:

* [ryanb/dotfiles](https://github.com/ryanb/dotfiles) - core for other files
* [iain/osx_settings](https://github.com/iain/osx_settings/) - irbrc
* [twerth/dotfiles](https://github.com/twerth/dotfiles) - bashrc

I didn't introduce many changes in any of the dotfiles, I rather combined them together in order to utilise the best features of each dotfiles.

## Installation

Installation is very simple:

    git clone git://github.com/lubieniebieski/dotfiles.git
    cd dotfiles/
    git submodule init
    git submoudle update
    ./install.sh

Or you can just paste it inline:

    git clone git://github.com/lubieniebieski/dotfiles.git; cd dotfiles/; git submodule init; git submoudle update; ./install.sh

### iTerm2

1. Go to iTerm2 -> Preferences -> General Tab.
2. Check `Load preferences from a user-defined folder or URL`.
3. In the input below the checkbox, enter `/Users/your_user_name/.dotfiles/iterm2`.
4. Restart iTerm2

If you would like to use only the color scheme (IR_Black), you can find it under this path `~/.dotfiles/iterm2/IR_Black.itermcolors`

## TODO

* Sublime Text 2:
  * user Key Bindings
  * user File Settings
* remove dependencies in order to make it self-contained

## Credits

Thanks for all the people who care about their terminals :)