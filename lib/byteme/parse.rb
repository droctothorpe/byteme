module Parse
  def self.parse
    if ARGV.length < 1 || ARGV.length > 4
      puts Usage::USAGE
      return
    end

    @round = false
    if ARGV.include?('-r') | ARGV.include?('--round')
      @round = true
      ARGV.pop
    end

    input = ARGV[0]
    input_format = ARGV[1] || 'B'
    Convert.convert(input, input_format)
  end
end