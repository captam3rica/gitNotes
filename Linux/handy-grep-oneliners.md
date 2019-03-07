# Grep Commands

## Types

- grep -E - for grep to act as egrep. Interpreting patterns as extended regex
- grep -F - force grep to act as fgrep. Using fixed strings
- grep -e or --regexp - used to match patterns and can be used multiple times to match multiple patters in one grep command.
- grep -J - decompress bzip2 before looking for text
- grep -m - stop reading after max number of matches
- grep -w or --word-regexp - expression is searched for as a word i.e. `[[:<:]]` and `[[:>:]]`
- grep -z or -Z or --decompress - force grep to act as zgrep
- -x, --line-regexp - Only input lines selected against an entire fixed string or regular expression are considered to be matching lines.q:
- "--" denotes the end of command options. Allows for doing things such as the following
  - grep -- -v to look for only "-v" in the file

## One-liners

-   Grab IP addresses

    `grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`

-   Grab IP addresses only

    `grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
