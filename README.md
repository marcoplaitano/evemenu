# evemenu

This script lets the user interact with a non-intrusive menu based on [dmenu].

The idea is to expand on the basic functionality of **dmenu** by defining
personal commands, applications, routines and other scripts to run with it.

![demo gif]

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## Installation

**Note:** It only works on <u>Ubuntu</u> or <u>Arch</u> based distributions,
since it uses either `apt` or `pacman` to install.

```shell
git clone https://github.com/marcoplaitano/evemenu
cd evemenu && ./install.sh
```

The `install.sh` script clones and installs [my own patched version] of
**dmenu** with all its dependencies.

**Note:** `evemenu` will be in `$HOME/.local/bin`; make sure this is in `$PATH`.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## Usage

After the installation, you can launch the program with the following command:

```shell
evemenu
```

**Tip:** assign the execution of the program to a keyboard shortcut (like
`Alt+Space` ) to speed up your workflow.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## Configuration

The script takes no command line arguments; all the options have to be manually
edited in the file itself.

### Appearance

You can customize the appearance of dmenu.  
The program accepts custom values for the font and the colors of normal/selected
items.

### Actions

The most important part of the script is the dictionary containing all the
actions that can be executed.  
The values are the routines to run and the keys are the names the user has to
type to execute the commands.

```sh
declare -A actions=(
    [github]="firefox --new-instance https://www.github.com"
    [nightmode]="night_mode.sh --now"
    [spotify]="spotify"
)
```

With this example the user only has to launch the script and type out either
`github`, `nightmode` or `spotify` and the correspondent action will be
performed.

The advantage of a script like this, compared to **rofi** or **dmenu** itself
is the idea of having custom actions which can both be applications (like
`spotify`) or more complex commands with arguments and options (`github`), or
even other scripts (`nightmode`).

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## Dependencies

The only dependency is dmenu. It is installed via this [script].

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## Contributing

You can contribute by:
+ proposing a better name than **evemenu**
+ making [this] installation process available for other platforms too.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## Author

Marco Plaitano

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## License

Distributed under the [MIT] license.

<!-- LINKS -->

[dmenu]:
https://tools.suckless.org/dmenu/
"dmenu website"

[configurable]:
#actions
"Link to header"

[demo gif]:
https://github.com/marcoplaitano/images/blob/main/evemenu_demo.gif
"Demo GIF"

[download]:
https://github.com/marcoplaitano/evemenu/archive/refs/heads/master.zip
"Zip download"

[my own patched version]:
https://github.com/marcoplaitano/dmenu
"My fork of dmenu"

[script]:
https://github.com/marcoplaitano/dmenu/tree/main/install.sh
"dmenu installation script"

[this]:
https://github.com/marcoplaitano/dmenu/tree/main/install.sh
"dmenu installation script"

[MIT]:
LICENSE
"Repository file"
