

- echo "" > /var/log/auth.log   >>>>>>>>>>>    Clear auth.log file  
- echo "" > ~/.bash_history     >>>>>>>>>>>    Clear current user bash history  
- rm -rf ~/.bash_history        >>>>>>>>>>>    Delete .bash_history file  
- history -c                    >>>>>>>>>>>    Clear current session history  
- export HISTFILESIZE=0         >>>>>>>>>>>    Set history max lines to zero  
- export HISTSIZE=0             >>>>>>>>>>>    Set history max commands to zero  
- unset HISTFILE                >>>>>>>>>>>    Disable history logging  
                                              (must log out to take effect)  
- kill -9 $$                    >>>>>>>>>>>    kills current session  
- ln /dev/null ~/.bash_history -sf >>>>>>>>    Permanently send all bash history
                                              commands to /dev/null  
