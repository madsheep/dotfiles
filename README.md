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

### Settings (theme included)

1. Go to `iTerm2 -> Preferences -> General Tab`.
2. Check `Load preferences from a user-defined folder or URL`.
3. In the input below the checkbox, enter `/Users/your_user_name/.dotfiles/iterm2`.
4. Restart iTerm2

### Theme

If you would like to use only the color scheme (IR_Black), you can find it under this path:

    ~/.dotfiles/iterm2/IR_Black.itermcolors

### Sublime Text 2

#### Alias

Default alias to Sublime Text 2 is set to `subl`. Just enter following line in the console:

    ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

#### Theme

Sublime Text 2 theme is strictly connected with terminal theme `IR_Black`. If you want to use it, first copy it:

    cp  ~/.dotfiles/sublime2/IR_Black.tmTheme "~/Library/Application Support/Sublime Text 2/Packages/Color Scheme - Default"

and then just select new theme from menu: `Sublime Text 2 -> Preferences -> Color Scheme -> Color Scheme - Default -> IR_Black`

You can skip the second part and apply all the settings as described in next paragraph.

#### Settings

My settings for Sublime Text 2 includes:

  * IR_Black theme
  * word wraping (80 columns + ruler)
  * tab size of 2 spaces
  * triming trailing white space on save

The fastest method to apply settings is to use:

    cp ~/.dotfiles/sublime2/Preferences.sublime-settings "~/Library/Application Support/Sublime Text 2/Packages/User"

#### Key bindings

  * `alt + m` for Markdown Preview in Browser ([MarkdownPreview](https://github.com/revolunet/sublimetext-markdown-preview) package needed)

In order to apply:

    cp ~/.dotfiles/sublime2/Preferences.sublime-settings "~/Library/Application Support/Sublime Text 2/Packages/User"

## TODO

* homebrew installation
* remove dependencies in order to make it self-contained

## Credits

Thanks for all the people who care about their terminals :)