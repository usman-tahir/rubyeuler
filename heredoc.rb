# http://rosettacode.org/wiki/Here_document
start_time = Time.now
document = <<END
  Once upon a time
  There was a string
  That was enclosed differently
  Than other strings.
END

puts document
puts ((Time.now-start_time).to_f).to_s + "s"

