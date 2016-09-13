# Forward Secrecy

A property of secure communication protocols in which compromise of long-term
keys will not compromise past session keys. Forward secrecy protects past
sessions against future compromise of secret keys or passwords. If forward
secrecy is used, encrypted communications and sessions recorded in the past
cannot be retrieved and decrypted should long-term secret keys or passwords be
compromised in the future, even if the adversary actively interfered.

The term was first used by C. G. Günther in 1990, and further discussed by
Whitfield Diffie, Paul van Oorschot, and Michael James Wiener in '92 where it
was used to describe a property of the Station-to-Station protocol.

## About

A public-key system has the property of forward secrecy if it generates one
random public key per session to complete a key agreement, without using a
deterministic algorithm. This means that the compromise of one message cannot
compromise others as well, and there is no one secret value whose acquisition
would compromise multiple messages. Not to be confused with the perfect secrecy
demonstrated by a one-time-pad. When it is used properly, the one-time-pad
involves multiple parties agreeing on a set of disposable keys by communicating
it fully in private - without a formalized key agreement system - and then using
each key for one message only.

**Weak Perfect Forward Secrecy**

wPFS is defined as when long-term keys are compromised, the secrecy of
previously est. session-keys is guaranteed, but only for sessions in which the
adversary did not actively interfere the session. In contrast to PFS, which
doesn't allow the tampering of past session-keys even when the attacker is able
to actively interfere with a MITM attacker etc.

**TLS Handshake without Forward Secrecy**

![TLS handshake without forward secrecy](/images/2016/07/sslhandshake.png)

The server presents its cert and the client and server will decide on a *master
secret*. This secret is built from a [some]byte *premaster secret* generated and
encrypted by the client with the servers public key. It is then sent in a Client
Key Exchange message to the server during the 3rd step of the TLS Handshake. The
*master secret* is derived from this premaster secret and random values sent in
clear-text with Client Hello and Server Hello messages.

The main problem is that private key is used for two purposes: **auth** on the
server and **encryption** of a shared secret. Auth only matters while the
communication is established, but encryption is expected to last for years.  

## Attacks on Forward Secrecy

Forward secrecy cannot defend against a good cryptanalysis attack, but this
would take a while to complete because the attacker would have to find a way to
decrypt a message without the private key to decipher it. So, older plaintext
can still be recovered even though forward secrecy is used.

## Protocols

- Optional in IPsec
- SSH
- Off-the-Record-Messageing - used in many instant messaging apps
- TLS
- Double Ratchet Algorithm

"ATS" (App Transport Security)

## Resources

- [https://vincent.bernat.im/en/blog/2011-ssl-perfect-forward-secrecy.html](https://vincent.bernat.im/en/blog/2011-ssl-perfect-forward-secrecy.html)
-  [https://en.wikipedia.org/wiki/Forward_secrecy](https://en.wikipedia.org/wiki/Forward_secrecy)
