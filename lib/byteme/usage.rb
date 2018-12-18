module Usage
  @usage = <<-HEREDOC
  Usage: <input value> <input format> 
  Optional -r / --round flag to print output as rounded floats instead of in scientific notation.
  Input/Output format can be:

  B: Bytes
  KB: Kilobytes
  MB: Megabytes
  GB: Gigabytes
  TB: Terabytes
  PB: Petabytes
  b: bits
  kb: kilobits
  mb: megabits
  gb: gigabits
  tb: terabits
  pb: petabits

  Examples:
  $ byteme 1000 
  $ byteme 1000 GB
  $ byteme 1000 kb -r
  HEREDOC
end