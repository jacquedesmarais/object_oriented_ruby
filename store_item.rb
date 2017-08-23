# item_1 = {item: "shirt", color: "blue", size: "xs"}
# item_2 = {:item => "pants", :color => "black", :size => "28"}
# item_3 = {item: "shoes", color: "brown", size: "8"}

# puts "#{item_1[:item]} #{item_1[:color]} #{item_1[:size]}"

class StoreItem
  attr_reader :item, :color, :size, :stock
  attr_writer :stock

  def initialize(input_options)
    @item = input_options[:item]
    @color = input_options[:color]
    @size = input_options[:size]
    @stock = input_options[:stock]
  end

  def print_info
    puts "Do you have #{item} in #{color} and size #{size}? #{stock}"
  end
end

class Food < StoreItem
  attr_reader :shelf_life

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end

end

item_1 = StoreItem.new(
                        item: "shirt", 
                        color: "blue", 
                        size: "xs", 
                        stock: true
                        )

item_2 = StoreItem.new(
                        item: "pants", 
                        color: "black", 
                        size: "28", 
                        stock: false
                        )
item_3 = StoreItem.new(
                        item: "shoes", 
                        color: "brown", 
                        size: "8", 
                        stock: true
                        )

item_4 = Food.new(
                  item: "banana",
                  color: "pink",
                  size: "baby",
                  stock: true,
                  shelf_life: "2 days"
                  )

item_1.print_info
item_1.stock = false
item_1.print_info
item_2.print_info
item_3.print_info
puts item_4.shelf_life
