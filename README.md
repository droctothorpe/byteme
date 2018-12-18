# ByteMe
A simple CLI for converting between bytes, kilobytes, megabytes, etc.
Can you just Google it? Yes. Is leaving terminal for newbs? Maybe.

![image](gingerbread.jpg)



## Installation

`gem install byteme`

## Usage
`byteme <input value> <input format>`

Note: if no input format is specified, ByteMe assumes that the input format is Bytes.  

Optional `-r / --round` flag to print output as rounded floats instead of in scientific notation.

Input/Output format can be:

| Command Argument | Corresponds To |
| ---------------- | -------------- |
| B | Bytes |
| KB | Kilobytes |
| MB | Megabytes |
| GB | Gigabytes |
| TB | Terabytes | 
| PB | Petabytes |
| b | bits |
| kb | kilobits | 
| mb | megabits |
| gb | gigabits |
| tb | terabits |
| pb | petabits | 

## Examples:
`$ byteme 1000 `

`$ byteme 1000 GB`

`$ byteme 1000 kb -r`

## Example output:

``` ./bin/byteme 1000
+-----------+----------+
| Type      | Value    |
+-----------+----------+
| Bytes     | 1000.0   |
| Kilobytes | 1.0      |
| Megabytes | 0.001    |
| Gigabytes | 1.0e-06  |
| Terabytes | 1.0e-09  |
| Petabytes | 1.0e-12  |
| bits      | 8000.0   |
| kilobits  | 0.125    |
| megabits  | 0.000125 |
| gigabits  | 1.25e-07 |
| terabits  | 1.25e-10 |
| petabits  | 1.25e-13 |
+-----------+----------+
```

PRs are welcome! 