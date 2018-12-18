module Convert
  def self.convert(input, input_format)
    formulas = {
      B: [1, 'Bytes'],
      KB: [10**3, 'Kilobytes'],
      MB: [10**6, 'Megabytes'],
      GB: [10**9, 'Gigabytes'],
      TB: [10**12, 'Terabytes'],
      PB: [10**15, 'Petabytes'],
      b: [0.125, 'bits'],
      kb: [8*10**3, 'kilobits'],
      mb: [8*10**6, 'megabits'],
      gb: [8*10**9, 'gigabits'],
      tb: [8*10**12, 'terabits'],
      pb: [8*10**15, 'petabits']
    }

    # Sanitize input
    if !formulas.keys.include?(input_format.to_sym)
      puts "Error: input format (#{input_format}) is incorrect."
      puts @usage
      return
    end

    rows = []
    formulas.keys.each do |key|
      numerator = formulas[input_format.to_sym][0]
      raw_value = input.to_f * numerator / formulas[key.to_sym][0]
      if @round
        output = ( "%.5f" % raw_value ).sub(/\.?0*$/, '')
      else
        output = raw_value
      end
      output_format = formulas[key.to_sym][1]
      rows.push([output_format, output])
    end

    table = Terminal::Table.new :headings => ['Type', 'Value'], :rows => rows
    # table.style = {:all_separators => true}
    puts table
  end
end