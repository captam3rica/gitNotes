# Manual Convert Local Account to AD Account

1.  First ensure that the local mac user account password matches the 
    password for the AD account that you want to migrate to. 

2.  Log into the computer under any Admin account other than the account 
    that needs to be migrated. 

3.  Go to **`System Preferences > Users and Groups > click on Login Options`** 

4.  Authenticate to unlock the **Preferences Pane**. 

5.  Click the **Edit** or **Join** button next to Network Account Server. 

6.  Click **Open Directory Utility** 

7.  In Open Directory Utility, authenticate as an admin and go to the Edit
    menu and enable the Root user if not already enabled. 

    Set a password for the root user if not already set. 

8.  If you have already added the computer to the domain and configured 
    option to create mobile account at login, close Directory Utility 
    and go back to Users & Groups in System Preferences and continue to 
    next step. 

    If you have not bound computer to domain, double click **Active Directory** 
    in the Directory Utility. Click the triangle to the left of the 
    window to expand the Active Directory options. Type in the domain 
    name and click Bind. Authenticate with appropriate credentials. Choose 
    create mobile account at login and then click OK. Go back to Users 
    & Groups in System Preferences and continue to next step. 

9.  Select the local user account that you want to migrate to an AD account and 
    choose Delete (-). 

10. At the Delete prompt, select option to 'Don't change the home folder (the 
    home folder remains in the user folder). This will rename the user folder 
    by adding '(Deleted)' at the end of the folder. Click 'Delete User' 

11. Log out of the computer. 

12. At login screen, select Other… and log into computer with AD account and if
    prompted, select the option for 'Create Mobile Account'. Skip any 
    configuration prompts upon login. 

13. Log Out of AD account and log back in as root. 

14. Navigate to Users folder/new AD user folder and delete new AD user folder. 
    Restart computer, log back in as root, and empty trash. 

15. Rename the old user folder. Go the user folder and delete the '(Deleted)' 
    and any spaces from the folder name. The name of the user folder needs to 
    match the AD username. 

16. Select the User folder and choose Get info. 

17. Unlock Permissions 

18. Click + and add Network User and type in and select the correct AD user and
    click ok. 

19. Set the user with Read, Write permissions. Select user, click gear and 
    choose 'Make user owner' 

20. Click + and add Network Groups and add 'Domain Users' 

21. Set 'Domain Users' group permissions to be Read Only. 

22. Delete 'Staff' group 

23. Under the **Name** column in the **Sharing Permissions**: section, you will see
    an owner account listed and under the 'Name' column, it may read 'Fetching'.
    Select it and delete this entry. 

    Go to gear and select **Apply to Enclosed Items**

24. From a Terminal window, reset the user's home folder permissions & ownership

    `chown -R [username]:"WIN\Domain Users" /Users/[username]`
    `chmod -R 755 /Users/[username]`

25. Log out as root and log in as AD user. 

