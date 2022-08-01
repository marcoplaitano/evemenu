# Eve Menu

This script lets the user interact with a non-intrusive menu based on [dmenu].

With this menu it is possible to launch specific applications or execute
commands/routines just by typing out the command's name.  
(The association **name -> command** is [configurable] in the script).

![demo gif]

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## Installation

+ Clone or [download] this repository.
+ `cd` into its directory.
+ Launch the `install.sh` script like so:
    ```shell
    ./install.sh
    ```

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
edited in the [file itself].

### Appearance

You can customize the appearance of dmenu.  
The program accepts custom values for the font and the colors of (selected)
background and foreground.

### Actions

The most important part of the script is the dictionary containing all the
actions that can be executed.  
The values are the routines to run and the keys are the names the user has to
type to execute the commands.

Example:

```sh
[github]="firefox https://www.github.com"
```

With this example the user only has to launch the script and type out `github`
to open a new window/tab of firefox and load the Github website. 

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## Dependencies

Listed below are all the tools and libs used to download and install **dmenu**.
They are all automatically installed and properly used in the [installation
script].

+ wget
+ tar
+ gcc
+ make
+ libx11-dev
+ libxinerama-dev
+ libxft-dev

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## Author

Marco Plaitano

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## License

Distributed under the [MIT] license.

<!-- LINKS -->

[dmenu]:
https://tools.suckless.org/dmenu/
"Official website"

[configurable]:
#actions
"Link to header"

[demo gif]:
https://github.com/marcoplaitano/images/blob/main/evemenu_demo.gif
"Demo GIF"

[download]:
https://github.com/marcoplaitano/evemenu/archive/refs/heads/master.zip
"Zip download"

[file itself]:
evemenu
"Repository file"

[installation script]:
install.sh
"Repository file"

[MIT]:
LICENSE
"Repository file"
