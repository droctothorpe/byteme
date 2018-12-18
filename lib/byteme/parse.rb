module Parse
  def self.parse
    if ARGV.length < 1 || ARGV.length > 4
      puts Usage::USAGE
      return
    end

    if ARGV[0] 
      if ARGV[0] == 'help'
        puts Usage::USAGE
        return
      end
    end

    @@round = false
    if ARGV.include?('-r') | ARGV.include?('--round')
      @@round = true
      ARGV.pop
    end

    def self.get
      @@round
    end

    input = ARGV[0]
    input_format = ARGV[1] || 'B'
    Convert.convert(input, input_format)
  end
end