# GNUPGP

## Commands
https://www.gnupg.org/documentation/manpage.en.html

**Key Basics**

- gpg --key-gen
- gpg --delete-key [keyid]
- gpg --send-keys [keyid] --keyserver hkp://subkys/pgp.net - will export public keys to key servers (hkp server by default)
- gpg --search-keys [search string]
- gpg --list-keys
- gpg --list-secret-keys
- gpg --fingerprint
- gpg --list-public-keys

**Export & Import**

- gpg --export -a [uid] > file_name.key
- gpg --export-secret-key -a [uid] > file_name.key
- gpg --import [file name]
- gpg --recv-keys [keyid]

**Key Verification**

- gpg --verify [file_signature.sig.asc] [file_name]
- gpg --keyid-format long --import [name_of_file]
- gpg --keyid-format long --verify [name_of_file.sig] [name_of_file]
- gpg --sign [name_of_file]
- gpg --sign-key [keyid]

**Encrypt & Decrypt**

- gpg --output [file_name.gpg] --encrypt --recipient [uid] [name_of_file] (can be used with -s)
    - gpg -o [file_name.gpg] -e -r Name [file]
- gpg --output [file] --decrypt [file.txt.gpg]

**Delete Keys**

- gpg --delete-secret-and-public-key [uid]
- gpg --delete-secret-key [uid]

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
