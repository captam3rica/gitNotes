# Borg Backup

## Installation

Full guide can be found [here](http://borgbackup.readthedocs.io/en/stable/installation.html)

**Package Installation**

- Arch Linux - `pacman -S borg`
- OS X - Use github or standalone binary package
- Debian & Ubuntu - `apt-get install borgbackup`

**Standalone Binary Package**  

[Binary Release page](https://github.com/borgbackup/borg/releases)

Add the binary to a folder in your `PATH`

    sudo cp borg-linux64 /usr/local/bin/borg
    sudo chown root:root /usr/local/bin/borg
    sudo chmod 755 /usr/local/bin/borg

If a new version of Borg is released, the binary will need to be downloaded
again and reinstalled.

**Using Git**  

    # get borg from github
    git clone https://github.com/borgbackup/borg.git

    virtualenv --python=python3 borg-env
    source borg-env/bin/activate   # always before using!

    # install borg + dependencies into virtualenv
    pip install sphinx  # optional, to build the docs
    cd borg
    pip install -r requirements.d/development.txt
    pip install -r requirements.d/fuse.txt  # optional, for FUSE support
    pip install -e .  # in-place editable mode

    # optional: run all the tests, on all supported Python versions
    # requires fakeroot, available through your package manager
    fakeroot -u tox

### Quick Start guide

[Full Guide Here](http://borgbackup.readthedocs.io/en/stable/quickstart.html)
