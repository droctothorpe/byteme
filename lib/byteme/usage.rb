require 'byteme/convert'
require 'terminal-table'

module Usage
  rows = []
  Convert::FORMULAS.each do |key, value|
    rows.push([key, value[1]])
  end
  table = Terminal::Table.new :rows => rows
  
  # Options String
  # options_string = ""
  # Convert::FORMULAS.each do |key, value|
  #   options_string << "#{key}: #{value[1]}\n"
  # end

  USAGE = <<-HEREDOC
Usage:
$ byteme <input value> <optional input format> 

If no input format is specified, Bytes is assumed.

You can pass the -r or --round flag to print output as rounded floats instead of in scientific notation.

Input/Output format can be any value from the left-hand column:
#{table}

Examples:
$ byteme 1000 
$ byteme 1000 GB
$ byteme 1000 kb -r
HEREDOC
end