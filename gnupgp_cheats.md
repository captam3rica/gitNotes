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

## My Public Key

-----BEGIN PGP PUBLIC KEY BLOCK-----
Comment: GPGTools - https://gpgtools.org

mQENBFX1gkUBCADKx7vc229tTGwUk4gRE6SwIMZZjlak4VWzKElYIpU7zmzEKWFM
e+6GaZAPONbcFz5KxSg7A/xHB9mIiJYaiuX0qITFHlwkm4I+v8e3m1m9hGi1JBPn
UbuAdgRENISVuESEMjS4pt0jOvfN0C14Y6th7VQoABSDAbO9p9Ekfu34ycvfQ5gW
Fa30i+V347xntafqIGwknsLV8F738fbj9wFuudKs9KpFga9kVtsGT0wA3/iiHd/6
MEM+5KrUHm6wj8CoJ+NpksMFc2RBl2GB7bYtrgDv4JGTQ5OBCueFkOcqKSr2ni3h
lw+308pJOICTSv7HqZJq/4+TGuWO4UieUfZrABEBAAG0KE1hdHRoZXdfV2lsc29u
IDxtYXR0aGV3aWxzb24yQGdtYWlsLmNvbT6JATcEEwEIACEFAlX1gkUCGwMFCwkI
BwIGFQgJCgsCBBYCAwECHgECF4AACgkQcZEc+rZLk9VHmQgAkR0Oy0qEi8+Lidbr
Vzzm27B6e4dXhlhQZ14FO9R7tWALmDWqfTfK7Mk3U60BKhQjLGYc7wgcrPOgxRMC
HchQJjCSYWxUUHhffPtuwMXGnDpnvrHwbnavWeNXJkWictCMz0S+z8sdOCPW5JR2
ML41qnBfqeeykeJKwJvhPdaKbD0yUvWSju5Hx2bUMQui9pWDTAX/rOVBqzbue/vl
JJ2413oJDI3sFeRF7OPRXYLkl5jS61JsPR0xMXpFmyLE8ZulSe6MDphov1NiJr+h
ccXrx06jotAip6qBvxk5+kGpmS4bVjZwaLn7J+JKJAmR3fg5nnDXJYKZWaj9KMJt
QdXYc7Q4TWF0dCBXaWxzb24gKG5ldyBlbWFpbCBhZGRyZXNzKSA8am1hdHR3aWxz
b24xQGdtYWlsLmNvbT6JAToEEwEKACQCGwMFCwkIBwMFFQoJCAsFFgIDAQACHgEC
F4AFAlnFCbMCGQEACgkQcZEc+rZLk9Vy1wgAomw7LztR0PYoddCF2bspWydujMXA
djVUtzNRJS+gN16BSnnqMw3N1Q6denzlklePURlzGiPNJTGZEdxmp45PWCjGKBV/
QB7z4rvKbjwKuvEOh4t7ovpMi/sWqFi3LIylqOFzadbZGp59q9T1uJ/Blqi/9/kn
G3WiB6U/BtaXv/FJDPedzNQqNgfJse7/OJbRMeoSMQfqoSZk+xtFeNhS/1qgDKS0
AVzFYrg8lovwkwTrIBEkT+De2GvsCZW8rVEVzw71fMudGOS7H26726mLjoP34S10
TVxcIq6Dc/7rELga+XMrO4ZRSnMPHlQX1het/TYCQx2uITfmbuHmF9YXb7QjTWF0
dCBXaWxzb24gPGp3aWxzMTU2QGtlbm5lc2F3LmVkdT6JATcEEwEKACEFAlnFCTkC
GwMFCwkIBwMFFQoJCAsFFgIDAQACHgECF4AACgkQcZEc+rZLk9XkKQf/fDzm26Pj
8RiGp6nIX0IEC20JbM/0w/L/hAvzhnMlSUG2Itxm2+/CUe+FeRAP+oYBk0arEQRK
rQYkG643MboWJLeXwwnvllhCAT5ROWl08GM89Ai9yGBJP0xpXWKCOhGQcMndOQ4C
GlH2U6U/JtYcP/s72hen4CTJ88KqzjZvJK1EtyAgb3vxl68W1hYZeM0g5EqlQsNd
nBliUaGtbh6H6+IBsrH8Nnlw03RPPv112/6kFzjXEK9WxXZNlC6CkQnjTFdR/ETp
KFyQthah+tn5qD4YF5a3pyzFFTacblpjEs0aTUB5qQjcxXH3hN09V99nsoVfD240
OPmbYkl360LYZ7kBDQRV9YJFAQgA7q+3jmViS3KEGpa0fRLFvBkxIEEk3rer/cXa
ZunjfaLJe0AlkwIsVhe3RUBDHe73k5UCtQlg/VZ/Df0io9amXDMljyAnnyJjGxjn
63UTWFXvF9VftNQTEgo+kUMtISAbRZZwqcgCRYM+OkY3r/Na7XTjYDDB0giTo1A5
N0NNeJVE6MY5VznZRbZLDAyVyxe7l5PLpKTqGB/uoVVLWFn5Ot+BFxQYPkGh2W2i
CdcPoBzq9zKufi8KJkSe3t+ttfv6BbgvE2Yxb0DvFxpD4w4Ldm2bEbcOfq6ZaDAB
cSjZzpomm7mMQWv4/NqAi6K3bQUh3+X3aC/jdeeRSZOulFMX1QARAQABiQEfBBgB
CAAJBQJV9YJFAhsMAAoJEHGRHPq2S5PVyQwH+gLhrVBCSMg2ssLL30pccrbIxG7b
nmGWLDbL83AuvwZsAkA7NeSy2muIrFRuYTJe9SkcyTp83k+c6ULXXH0sgXUWqJa9
NdPy4CZ+SPv1nZ/D8OmB8de+B9VH5gS1d3mO9bCvsvgrBeeKpsTREw1x8B5SZaVf
kbW7UAvVe3qE1gY8HgOCBV9nb+fuvIm2WQdgdH0VJLw9WidN7/DhZCbzKwyu/MZE
FGpjh4blU6ApaghqY4v068vxf0OsnuLH5aJv00njXwLKMCZduXrFxvbz0HwEIjJ0
MsgdqownbSyVdN1/WNhEabFTQwOLhBLAx67a6FZaPUo/VSw2AoPKo/HLwKW5AQ0E
WcUKQAEIAMNHmDCXPiiUmB2LTcddtbquDus0B69qikuc4J2DUtY+wRw90eUKlS9I
QTpkaKorLIVAX8+/J6fnbBN8UXbh7S7ABvJy7fXkL8jQk+/dXuoBFYMrcKyjP9N+
r+D9pYFk0DNAFAmgJJ7BIeODGGlOrFMuk3xCyERvbjfYevzmg3RyKdu1xj0/xYK1
CZjuwTQBp760UXCZ2eQf3u2vyGh4Jpgfi9qERBXSbMRa1GGSBfq2bjwoo0g37Tx9
8SFrawcDJwASx0XUjaJGEQYR+G3H9FBxbwA0EM8bW+iTBB2ACn5naiefcAjm1k9z
Q1dm7vKHxqc1t/SwSnnNT7YdsYw8h88AEQEAAYkCPgQYAQoACQUCWcUKQAIbAgEp
CRBxkRz6tkuT1cBdIAQZAQoABgUCWcUKQAAKCRBh6JbmjNoGp2DGB/9PvOTdz8lh
r+uZBu3LRRKeBM3OHqsS15TdS58mB7EbWlYoT7gM3fZyyhiGSzjf+YiODdwoqUck
BbsBInJgdSVNudo19hp/ZZoKYCERhLghTEmq3MlY7h4x6Ib9Ih2szsGMjxQ96txS
5s5JVZwD6D0YAKxkhG/8wAsXyfUKHwTVxlk3pyFTUcP91geotTdDGwsrUNfmoQSF
qLlT2NgUZ+Z6D6QkCmprLcaOLZ/AKtBylHASwbDjGj9Dcxkj9lcrrFdZz3+aWgbt
5kH7GNALJ2M2/aS+0POGIMFH7E9w8VKHEv/pr9Pca/g0V1q7jlYenvZZZHJ2IUt7
RrLLulhRKkYAalIH/iI3C3KnlJXUNuKNKAbA/6kknsXjq8oRtpjtVTwrRNH+UatA
0IvOXUSjQYvy4j+h14Nm43C79e97NcIhn7qxQM7HZrAzB8TmooBuMHFjgzfj7idF
pI3uAhAyuoiH4gL9X+Trg5wNgXgyszQt6FAy7C0wohzB0geskqEpHHdIp3XSKJIc
5a5fFgRtFRmroRRBZHid4m2A3+rbxd8smgL2g3ft7gkJB4B1mYQZ3WV+aeRkUk2H
KX2psjApVZEpitFZvm3pZANC8zcYSSktlJddhKrLXNYoWKN9aR4laaTh4WIWu8GE
m56uHjeKijUdd4DvTdsV9wPRO2mwXJ7kjSG+L1U=
=aN/g
-----END PGP PUBLIC KEY BLOCK-----
