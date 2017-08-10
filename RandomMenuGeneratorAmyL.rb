### Random Menu Generator ###
### three arrays of foods and descriptors
### randomly pull an item from each of the three arrays

adj= ["hot", "crunchy", "spicy", "crispy", "mellow", "flaming", "cold", "tender", "interesting", "fresh"]
style= ["roasted", "sauteed", "oven-baked", "grilled", "fried", "blended", "barbequed", "whipped", "sous-vide", "boiled"]
food = ["egg", "noodles", "ramen", "burger", "pizza", "rice", "brocolli", "soup", "surprise", "wrap"]

#### Version 3
# This version asks users how many menu items they want to see and prompts users until they select a valid number.
puts "Welcome to the random menu generator! How many menu items would you like today?"
choices = gets.chomp.to_i

until (choices > 0 && choices < 11) do
  puts "Please pick a number from 1-10."
  choices = gets.chomp.to_i rescue nil
end

if choices <= food.length

  i = 1

  while i < (choices + 1)


    index1 = rand(0...adj.length)
    item_adj = adj[index1]
    adj.delete_at(index1)

    index2 = rand(0...style.length)
    item_style= style[index2]
    style.delete_at(index2)

    index3= rand(0...food.length)
    item_food = food[index3]
    food.delete_at(index3)

    puts "#{i}. #{item_adj} #{item_style} #{item_food}"

    i +=1
  end

end

### Random Menu Generator ###
### three arrays of foods and descriptors
### randomly pull an item from each of the three arrays

# adj= ["hot", "crunchy", "spicy", "crispy", "mellow", "flaming", "cold", "tender", "interesting", "fresh"]
# style= ["roasted", "sauteed", "oven-baked", "grilled", "fried", "blended", "barbequed", "whipped", "sous-vide", "boiled"]
# food = ["egg", "noodles", "ramen", "burger", "pizza", "rice", "brocolli", "soup", "surprise", "wrap"]
#
# #### Version 3.1
# # This version asks users how many menu items they want to see, asks customers to input
#
# adj = []
# style = []
# food = []
#
#
# puts "Welcome to the Random Menu Generator! We have three options to create your menu item: Adjective, style, and food item."
# puts "How many adjectives would you like to provide?"
# adj_num = gets.chomp.to_i
#
# until adj.length == adj_num
#   puts "Please provide an adjective."
#   adj_input= gets.chomp.to_s rescue nil
#   adj << adj_input
# end
#
# puts "How many styles would you like to provide?"
# style_num = gets.chomp.to_i
#
# until style.length == style_num
#   puts "Please provide a style."
#   style_input= gets.chomp.to_s rescue nil
#   adj << style_input
# end
#
# puts "How many food items would you like to provide?"
# food_num = gets.chomp.to_i
#
# until food.length == food_num
#   puts "Please provide a style."
#   food_input= gets.chomp.to_s rescue nil
#   adj << food_input
# end
#
#
# puts "Great! Thank you for providing your input."
# puts "How many menu items would you like today?"
# choices = gets.chomp.to_i
#
# min= [adj.length, style.length, food.length].min
# until (choices > 0 && choices <= min) do
#   puts "Please pick a number from 1- #{min}."
#   choices = gets.chomp.to_i rescue nil
# end
#
# if choices <= food.length
#
#   i = 1
#
#   while i < (choices + 1)
#
#
#     index1 = rand(0...adj.length)
#     item_adj = adj[index1]
#     adj.delete_at(index1)
#
#     index2 = rand(0...style.length)
#     item_style= style[index2]
#     style.delete_at(index2)
#
#     index3= rand(0...food.length)
#     item_food = food[index3]
#     food.delete_at(index3)
#
#     puts "#{i}. #{item_adj} #{item_style} #{item_food}"
#
#     i +=1
#   end
#
# end
