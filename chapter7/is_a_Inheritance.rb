class Product
end


class DVD < Product
end

dvd = DVD.new
puts dvd.is_a?(Product)
puts dvd.is_a?(DVD)