module Convert
  FORMULAS = {
    B: [1, 'Bytes'],
    KB: [10**3, 'Kilobytes'],
    MB: [10**6, 'Megabytes'],
    GB: [10**9, 'Gigabytes'],
    TB: [10**12, 'Terabytes'],
    PB: [10**15, 'Petabytes'],
    b: [0.125, 'Bits'],
    kb: [8*10**3, 'Kilobits'],
    mb: [8*10**6, 'Megabits'],
    gb: [8*10**9, 'Gigabits'],
    tb: [8*10**12, 'Terabits'],
    pb: [8*10**15, 'Petabits'],
    KiB: [1024, 'Kibibytes'],
    MiB: [1024**2, 'Mebibytes'],
    GiB: [1024**3, 'Gibibytes'],
    TiB: [1024**4, 'Tebibytes'],
    PiB: [1024**5, 'Pebibytes']
  }

  def self.convert(input, input_format)
    # Sanitize input
    if !FORMULAS.keys.include?(input_format.to_sym)
      puts "Error: input format (#{input_format}) is incorrect."
      puts @usage
      return
    end

    rows = []
    FORMULAS.keys.each do |key|
      numerator = FORMULAS[input_format.to_sym][0]
      raw_value = input.to_f * numerator / FORMULAS[key.to_sym][0]
      if Parse.get
        output = ( "%.5f" % raw_value ).sub(/\.?0*$/, '')
      else
        output = raw_value.to_s.sub(/\.0*$/, '')
      end
      output_format = FORMULAS[key.to_sym][1]
      rows.push([output_format, output])
      # Add seperator between output categories.
      if ([key.to_s] & ['PB', 'pb']).any? 
        rows << :separator
      end
    end

    table = Terminal::Table.new :headings => ['Type', 'Value'], :rows => rows
    puts table
  end
end