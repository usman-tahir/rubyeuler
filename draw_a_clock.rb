# http://rosettacode.org/wiki/Draw_a_clock

TOPS = { 0 => "   __",
         1 => "     ",
         2 => "   __",
         3 => "   __",
         4 => "     ",
         5 => "   __",
         6 => "   __",
         7 => "   __",
         8 => "   __",
         9 => "   __"
}

MIDS = { 0 => " /  /",
         1 => "    /",
         2 => "  __/",
         3 => "  __/",
         4 => " /__/",
         5 => " /__ ",
         6 => " /__ ",
         7 => "    /",
         8 => " /__/",
         9 => " /__/"
}

BOTS = { 0 => "/__/ ",
         1 => "   / ",
         2 => "/__  ",
         3 => " __/ ",
         4 => "   / ",
         5 => " __/ ",
         6 => "/__/ ",
         7 => "   / ",
         8 => "/__/ ",
         9 => " __/ "
}

def clock(hours,minutes,seconds)
  #split hours into tens and ones
  hours_digits = hours.to_s.split(//).to_a.map {|e| e.to_i}
  hours_digits.unshift(0) if hours_digits.count == 1
  h_tens = hours_digits[0]
  h_ones = hours_digits[1]

  top_tens_h = TOPS[h_tens]
  mid_tens_h = MIDS[h_tens]
  bot_tens_h = BOTS[h_tens]
  
  top_ones_h = TOPS[h_ones]
  mid_ones_h = MIDS[h_ones]
  bot_ones_h = BOTS[h_ones]

  # split min into tens and ones
  minutes_digits = minutes.to_s.split(//).to_a.map {|e| e.to_i}
  minutes_digits.unshift(0) if minutes_digits.count == 1
  m_tens = minutes_digits[0]
  m_ones = minutes_digits[1]

  top_tens_m = TOPS[m_tens]
  mid_tens_m = MIDS[m_tens]
  bot_tens_m = BOTS[m_tens]

  top_ones_m = TOPS[m_ones]
  mid_ones_m = MIDS[m_ones]
  bot_ones_m = BOTS[m_ones]

  #split seconds into tens and ones
  seconds_digits = seconds.to_s.split(//).to_a.map {|e| e.to_i}
  seconds_digits.unshift(0) if seconds_digits.count == 1
  s_tens = seconds_digits[0]
  s_ones = seconds_digits[1]

  top_tens_s = TOPS[s_tens]
  mid_tens_s = MIDS[s_tens]
  bot_tens_s = BOTS[s_tens]

  top_ones_s = TOPS[s_ones]
  mid_ones_s = MIDS[s_ones]
  bot_ones_s = BOTS[s_ones]

  (<<-CLOCK)
  #{top_tens_h}#{top_ones_h}    #{top_tens_m}#{top_ones_m}    #{top_tens_s}#{top_ones_s}
  #{mid_tens_h}#{mid_ones_h}  . #{mid_tens_m}#{mid_ones_m}  . #{mid_tens_s}#{mid_ones_s}
  #{bot_tens_h}#{bot_ones_h} .  #{bot_tens_m}#{bot_ones_m} .  #{bot_tens_s}#{bot_ones_s}
  CLOCK
end

loop do 
  system "clear"
  current_time = Time.now
  hours = current_time.strftime("%I").to_i
  minutes = current_time.strftime("%M").to_i
  seconds = current_time.strftime("%S").to_i
  puts clock(hours,minutes,seconds)
  sleep(1)
end
