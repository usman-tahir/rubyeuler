# http://programmingpraxis.com/2014/11/25/thou-impertinent-urchin-faced-miscreant/

def wordsmanship(code)
  column_1 = ["integrated","total","systematized","parallel","functional",
              "responsive","optional","synchronized","compatible","balanced"]

  column_2 = ["management","organizational","monitored","reciprocal","digital",
              "logistical","transitional","incremental","third-generation",
              "policy"]

  column_3 = ["options","flexibility","capability","mobility","programming",
              "concept","time-phase","projection","hardware","contingency"]
  case 
  when !(code == code.to_i)
    "#{column_1.sample} #{column_2.sample} #{column_3.sample}"
  when code > 999
    "#{column_1.sample} #{column_2.sample} #{column_3.sample}"
  when code < 0
    "#{column_1.sample} #{column_2.sample} #{column_3.sample}"
  else
    val = code.to_s.split(//).map { |digit| digit.to_i }
    "#{column_1[val[0]]} #{column_2[val[1]]} #{column_3[val[2]]}"
  end
end    

p wordsmanship(123)
p wordsmanship("horse")
p wordsmanship(1021)
