# evemenu

This script lets you interact with a custom *actions menu* based on [dmenu].

The idea is to expand on the basic functionality of **dmenu** by defining
personal commands, applications, routines and other scripts to run with it.

![demo gif]

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## Installation

This project consists of a single bash script.  
To "install" it, copy it to the `bin` directory and give it executable
permissions.

```sh
git clone https://github.com/marcoplaitano/evemenu && cd evemenu
sudo cp evemenu /usr/local/bin/evemenu
sudo chmod 755 /usr/local/bin/evemenu
```

**Note**: it relies on the **dmenu** utility; you can install it from
[this repository].

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## Usage

Launch the script with the `evemenu` command.

### Appearance

You can customize the appearance with custom values for the font, the
background and foreground colors.  
These are defined as variables in the script itself.

### Actions

The most important part of the script is the dictionary containing all the
actions that can be executed.  
The **values** are the routines to run and the **keys** are the names the user
has to type to execute the commands.

```sh
# [key]=value
declare -A actions=(
    [chatgpt]="firefox https://chat.openai.com/"
    [nightmode]="night_mode.sh --on"
    [spotify]="spotify"
)
```

With this example, launch the script and type out (or select with the arrows)
either *chatgpt*, *nightmode* or *spotify* and the correspondent action will be
performed.

The advantage of **evemenu**, compared to the standard **dmenu** utility,
is the possibility of defining custom actions which can be applications (like
`spotify`) or more complex commands with arguments and options (like `chatgpt`,
opening a specific link in the browser), or even other scripts (`nightmode`).

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## Dependencies

The only dependency is the **dmenu** utility. Install it from [this repository].

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

[demo gif]:
https://github.com/marcoplaitano/images/blob/main/evemenu_demo.gif
"Demo GIF"

[this repository]:
https://github.com/marcoplaitano/dmenu
"Github repository"

[MIT]:
LICENSE
"Repository file"
