# GNUPGP

Commands
https://www.gnupg.org/documentation/manpage.en.html

- gpg --key-gen
- gpg --delete-key <key_id>
- gpg --send-keys <key_id> --keyserver hkp://subkys/pgp.net - will export public keys to key servers (hkp server by default)
- gpg --export -a <uid> > file_name.key
- gpg --export-secret-key -a <uid> > file_name.key
- gpg --import <file-name>
- gpg --recv-keys <key-id>
- gpg --verify <name_of_asc_file> <name_of_file_that_we_are_verifying>
- gpg --keyid-format long --import <name of key.key>
- gpg --keyid-format long --verify <name of sig file.sig> <name of file to verify>
- gpg --sign <name_of_file>
- gpg --sign-key <key_id>
- gpg --output <file_name.gpg> --encrypt --recipient <user_name> <name_of_file> - to encrypt a file (can be used with -s)
    - gpg -e -r Name <file>
- gpg --output <file> --decrypt <file.txt.gpg>
- gpg --list-keys and --list-secret-keys and --fingerprint and --list-public-keys
- gpg --delete-secret-and-public-key <name> | --delete-secret-key <name>

mailevelope: email extension

Encrypt Thumbdrive

PGP Even when Someone's Listening - Tom Lowenthal
https://www.youtube.com/watch?v=ROv9hXprXOA

- Phil Zimmerman - creator of PGP - pretty good privacy
- Asymmetric Cryptography - there's a part used to encrypt and a part used to decrypt
- Signature - something that only I can produce and anyone can verify
- Digital Hash - sequence of characters describing some content. Must be calculated, not predicted. Must have the same content to produce the same hash.
- gpg-tools
