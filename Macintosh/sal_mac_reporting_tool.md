# Sal

Sal is a multi-tenanted reporting dashboard for Munki with the ability to
display information from Facter. It has a plugin system allowing you to easily
build widgets to display your custom information from Facter or Munki's
conditional items (or both!).

Click [here](https://github.com/salopensource/sal) for Sal on github

## Server Configuration

I configured Sal server on [CentOS 7/RHEL 7](https://github.com/salopensource/sal/wiki/RHEL-7)

Prerequisites:

    yum install epel-release firewalld gcc python-pip python-devel
    postgresql-libs postgresql-devel postgresql-server postgresql-contrib
    libffi-devel git httpd-devel httpd openssl-devel mod_ssl vim

Clone the Sal repository:

    $ git clone https://github.com/salopensource/sal.git
    $ cd sal
    $ git checkout tags/2.7.3

Install Sal's Dependencies:

    $ pip install -r setup/requirements.txt
    $ pip install psycopg2==2.6.2
    $ pip install gunicorn==19.6.0

Don't forget to logout of the python virtualenv:

    $ deactivate

## Client Configuration:

### Business Units and Machine Groups

- Business Unit > Machine Group > Machine  
    - Business Units - A way of dividing your Macs at a high level. They might
    be departments of facilities, or offices
    - Machine Groups - These are nested under Business Units and they contain
    Machines
- Creating a Business Unit and Group will generate a "key". This key allows a
Mac to know the group to which it belongs.

### Client Setup

Install the latest [Sal Scripts](https://github.com/salopensource/sal-scripts/releases)

Install the latest package for [Facter and Puppet](https://downloads.puppetlabs.com/mac/?C=M;O=D) for my OS X version:

-  When I installed the package, I left everything as default

  - If you do not use Puppet and choose to install the new all in one package
    you will most likely want to delete the launchdaemons that the package
    installs (a postinstall script in Munki would be ideal):

          rm /Library/LaunchDaemons/com.puppetlabs.mcollective.plist  
          rm /Library/LaunchDaemons/com.puppetlabs.puppet.plist  
          rm /Library/LaunchDaemons/com.puppetlabs.pxp-agent.plist

  - Facter scripts should be put here:

        /opt/puppetlabs/facter/facts.d

  - If the folder doesn't exist, create it

- Tell Client where the server is & What group it belongs too

      $ defaults write /Library/Preferences/com.github.salopensource.sal
      ServerURL http://sal.somewhere.com``
      $ defaults write /Library/Preferences/com.github.salopensource.sal key
      yourreallyreallyreallyreallylongkey(found in sal web app)

Uninstalling Sal from Client Machine:

      rm -rf /usr/local/sal
      rm -rf /Library/Preferences/com.github.salopensource.sal.plist
      rm -rf /var/db/receipts//var/db/receipts/com.github.salopensource.sal_scripts.*

## Plugins

- TimeMachine Status Info: https://github.com/salopensource/cabal95-plugins/tree/master/timemachine

## What I've done

- Installed Sal_scripts and puppet scripts
- Installed timemachine facter script - TimeMachine Facter Script.pkg
- Removed the puppet launch daemons because they aren't being used

## Errors

- Proxy 403 Error

## Resources

- [collectstatic django command](https://docs.djangoproject.com/en/1.9/ref/contrib/staticfiles/)
- [Sal](https://github.com/salopensource/sal)
- [Sal Settings](https://github.com/salopensource/sal/wiki/Settings)
- [Searching Sal](https://github.com/salopensource/sal/wiki/Search)
- [Installing Plugins](https://github.com/salopensource/sal/wiki/Installing-and-using-plugins)
- [Sal Scripts](https://github.com/salopensource/sal-scripts/releases)
- [Facter/Puppet Scripts](https://downloads.puppetlabs.com/mac/?C=M;O=D)
- [Sal LDAP Integration](https://github.com/macadmins/sal-ldap)
- [CentOS 7/RHEL 7](https://github.com/salopensource/sal/wiki/RHEL-7)
- [Facter/Puppet Scripts](https://downloads.puppetlabs.com/mac/?C=M;O=D)
- [MySQL](https://github.com/salsoftware/sal/blob/master/docs/Using_mysql_on_CentOS6.md)
