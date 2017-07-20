# Regular Expressions Fundamentals

## What is a RegEx

### History

- g/<regular expression>/p
  - Global search
  - Print result

- 1940 - McCulloch and Pitts - Neural network theory
- 1956 - Stephen Cole Kleene - Regular events/sets => Regular Expressions
- 1968 - Ken Thompson - First implementation in computing
- 1973 - Ken Thompson - First release of grep
- 1986 - Henry Spencer - regex library
- 1987 - Larry Wall - Integration in Perl
- 1992 - POSIX.2 - standardization into BRE and ERE
  - BRE - Basic Regular Expression
  - ERE - Extended Regular Expression
  - POSIX - Portable OS Interface for Unix
- 1997 - Philip Hazel - PCRE - Perl Compatible Regular Expressions

## How it Works

- Determine the pattern to match
  - Manuals
  - RFCs
- Build the RegEx
- Subject - what we are searching in
- Function
- Result

## Basic RegEx

- Hex color code
  - # plus 6 characters
  - /^\s*#?([A-F0-9]{6}|[A-f0-9]{3})\s*$/i
    - `?*+{#}` - quantifiers
      - ? - match exactly
      - * - 0 or more times
      - + - 1 or more times
      - {#} - specific number of characters
    - [...] - character range
    - (...|...) - grouping and alternation
    - ^...$ - Anchors
      - ^ - anchor to beginning of matching string
      - $ - anchor to the end of the matching string
    - i - modifiers - case insensitive 
- regexper.com
