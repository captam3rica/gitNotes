# Install Packages from the AUR

-   Unzip the tar file: tar zxf nameoffile
-   Navigate to the directory
-   makepkg -s - this will download and install any dependencies.
-   sudo pacman -U [package.pkg.tar.xz]

## Alternatively Install Yaourt

### Install Package-query

```
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si
cd ..
rm -rf package-query
```


### Install Yaourt

```
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
cd .. 
rm -rf yaourt
```


### Usage

Just use the following command to find the package your are looking for. Then, Select the number(s) next to the package(s)_that you would like to install.

`yaourt [package-name]'

