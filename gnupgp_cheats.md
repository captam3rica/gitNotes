# GNUPGP

## Commands
https://www.gnupg.org/documentation/manpage.en.html

- gpg --key-gen
- gpg --delete-key <key_id>
- gpg --send-keys <key_id> --keyserver hkp://subkys/pgp.net - will export public keys to key servers (hkp server by default)
- gpg --search-keys [search string]
- gpg --export -a <uid> > file_name.key
- gpg --export-secret-key -a <uid> > file_name.key
- gpg --import <file-name>
- gpg --recv-keys <key-id>
- gpg --verify [file_signature.sig.asc] [file_name]
- gpg --keyid-format long --import <name of key.key>
- gpg --keyid-format long --verify <name of sig file.sig> <name of file to verify>
- gpg --sign <name_of_file>
- gpg --sign-key <key_id>
- gpg --output <file_name.gpg> --encrypt --recipient <user_name> <name_of_file> - to encrypt a file (can be used with -s)
    - gpg -o [file_name.gpg] -e -r Name [file]
- gpg --output <file> --decrypt <file.txt.gpg>
- gpg --list-keys and --list-secret-keys and --fingerprint and --list-public-keys
- gpg --delete-secret-and-public-key <name> | --delete-secret-key <name>

mailevelope: email extension

Encrypt Thumbdrive

## Resources

PGP Even when Someone's Listening - Tom Lowenthal
https://www.youtube.com/watch?v=ROv9hXprXOA

- Phil Zimmerman - creator of PGP - pretty good privacy
- Asymmetric Cryptography - there's a part used to encrypt and a part used to decrypt
- Signature - something that only I can produce and anyone can verify
- Digital Hash - sequence of characters describing some content. Must be calculated, not predicted. Must have the same content to produce the same hash.
- gpg-tools

Matt Wilson <jwilso25@spsu.edu>
Matt Wilson <matthewilson2@gmail.com>
  4096 bit RSA key E788266A, created: 2014-11-14, expires: 2015-11-14 (expired)
