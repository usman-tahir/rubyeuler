# http://rosettacode.org/wiki/Here_document
start_time = Time.now
document = <<END
Once upon a time
There was a string
That was enclosed differently
Than other strings.
END

document2 = <<'THIS'
If you've got a long string,
Like one that goes across multiple
Paragraphs, you can use a heredoc
Instead of a regular string.
THIS

puts document
puts document2
puts ((Time.now-start_time).to_f).to_s + "s"

