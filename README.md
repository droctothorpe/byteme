# ByteMe
A simple CLI for converting between bytes, kilobytes, megabytes, etc.
Can you just Google it? Yes. Is leaving terminal for newbs? Maybe.

![image](gingerbread.jpg)

## Installation

`gem install byteme`

## Usage
`byteme <input value> <input format>`

If no input format is specified, Bytes is assumed.
You can pass the `-r` or `--round` flag to print output as rounded floats instead of in scientific notation. 

Input/Output format can be any value from the left-hand column:

| Argument | Corresponds To |
| ---------------- | -------------- |
| B | Bytes |
| KB | Kilobytes |
| MB | Megabytes |
| GB | Gigabytes |
| TB | Terabytes | 
| PB | Petabytes |
| b | Bits |
| kb | Kilobits | 
| mb | Megabits |
| gb | Gigabits |
| tb | Terabits |
| pb | Petabits |
| KiB | Kibibytes |
| MiB | Mebibytes |
| GiB | Gibibytes |
| TiB | Tebibytes |
| PiB | Pebibytes |

## Examples:
`$ byteme 1000 `

`$ byteme 1000 GB`

`$ byteme 1000 kb -r`

## Example output:

```byteme 1000
+-----------+-----------------------+
| Type      | Value                 |
+-----------+-----------------------+
| Bytes     | 1000                  |
| Kilobytes | 1                     |
| Megabytes | 0.001                 |
| Gigabytes | 1.0e-06               |
| Terabytes | 1.0e-09               |
| Petabytes | 1.0e-12               |
+-----------+-----------------------+
| Bits      | 8000                  |
| Kilobits  | 0.125                 |
| Megabits  | 0.000125              |
| Gigabits  | 1.25e-07              |
| Terabits  | 1.25e-10              |
| Petabits  | 1.25e-13              |
+-----------+-----------------------+
| Kibibytes | 0.9765625             |
| Mebibytes | 0.00095367431640625   |
| Gibibytes | 9.313225746154785e-07 |
| Tebibytes | 9.094947017729282e-10 |
| Pebibytes | 8.881784197001252e-13 |
+-----------+-----------------------+
```

Link to RubyGems: https://rubygems.org/gems/byteme

PRs are welcome! 