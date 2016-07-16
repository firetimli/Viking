def ispalin number
  string=number.to_s
  string2=string.reverse
  if string == string2
    return true
  else
    return false
  end

end

def multiple
  product =0
  palins =[]
  (100..999).each do |i|
    (100...999).each do |j|
      product = i*j
      if ispalin product
        palins<< product
    end
  end
end

return palins.max

end

max= multiple
puts"#{max}"
