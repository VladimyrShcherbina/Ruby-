food_basket = {}
price_basket = 0

loop do
  puts "Enter product name and push ENTER if you finished get stop"
  product_name = gets.chomp.downcase
  break if product_name == "stop"
  puts "Enter price per item and push ENTER"
  price_per_item = gets.chomp.to_f
  puts "Enter quantity per item and push ENTER"
  quantity_per_item = gets.chomp.to_f

  food_basket[product_name] = { price_per_item: price_per_item, quantity_per_item: quantity_per_item }
end

food_basket.values.each do |item|
  cost = item[:price_per_item] * item[:quantity_per_item]
  #cost = food_basket.values[0].values[0] *  food_basket.values[0].values[1]
  price_basket = cost + price_basket
  end

keys = food_basket.keys

puts "_" * 100
puts "Sum of oll purchase #{price_basket}"
puts "_" * 100
puts "You buy #{keys}"

# food_basket = {"q"=>{:price_per_item=>1.0, :quantity_per_item=>1.0}, "w"=>{:price_per_item=>2.0, :quantity_per_item=>2.0}}