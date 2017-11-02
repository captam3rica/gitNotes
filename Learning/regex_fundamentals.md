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
      - \* - 0 or more times
      - \+ - 1 or more times
      - {#} - specific number of characters
    - [...] - character range
    - (...|...) - grouping and alternation
    - ^...$ - Anchors
      - ^ - anchor to beginning of matching string
      - $ - anchor to the end of the matching string
    - i - modifiers - case insensitive
    - \s - escapes \t\r\n\f
- regexper.com

## Syntax in Detail

- PCRE (perl) is the general standard
- Layers of the GegEx
  - Interpreter
    - Locale
      - Version of programming lang
        - Programming lang
          - Engine Version
            - Regex Engine
- Study the environment

### Characters

- Control Chars
  - \0 - Null
  - \a - Bell
  - \b - Backspace
  - \t - Horizontal tab
  - \n - Line feed
  - \v - Vertical Tab
  - \f - Form feed
  - \r - Carriage Return
  - \e - escape

- Control Sequences

  | Syntax | Definition     |
  | :------------- | :------------- |
  | \cX       | Control Sequences       |
  | \XXX, \0XX       | Octals       |
  | \xHH, \x{HHHH}       | Hex codes       |
  | \uHHHH, \u{H...}       |  Unicode code points    |

- Pitfalls
  - \b - backspace
  - [\b] - literal backspace
  - \0 - Null bites. \x00 safest

- Meta Characters (special)
  - [] - character class.
    - [^] - will negate what is being matched
  - matching a dash is easiest by putting it at the beginning or the end or escape it with a --
  - \ to escape
  - Hex codes can also be used
  - Wildcard
    - . - match any character
    - except new lines
    - pitfalls
      - might miss carriage returns as well
      - .+ = a slow regex

- Repetition Quantifiers
  - ? - zero or one times
  - \* - zero or more times (unlimited)
  - \+ - one or more times (unlimited)
  - {n} - exact amount of times to match
  - {n,} - n or more times
  - {n,m} - between n and m times
  - {,m} - between 0(zero) and m times ({0,m})

- Backtracing
  - The regex will look for the first possible match and then serge forward. Then, backtrack until it can complete the last listed match. The more times that a regex has to do this, the slower it will be in completing the search.

- Best Practice
  - Be precise
  - Use negated character classes

- Reluctant Quantifiers (lazy)
  - Adding an extra `?` to the end of the regex will try match the least amount of times while still making a match
    - Not available in grep

- Pitfalls
  - Repeating some chars are usless
  - order is important
  - Repetition limits
  - Mixing some type of syntax

- Alternations (|)
  - Separate branchs
  - Not speical in a class
  - Note:
    - PCRE will match Left-most (first) match
    - POSIX will try to match Left-most longest match
  - Mind the branch order
  - Make the beginning and end of an Alternation with grouping delimiters

-

## Resources

- [Regex101](https://regex101.com/ "Regex practice tool")
