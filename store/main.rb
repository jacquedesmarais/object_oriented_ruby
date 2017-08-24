require "./store_item.rb"
require "./storable.rb"
require "./food.rb"

item_1 = Target::StoreItem.new(
                        item: "shirt", 
                        color: "blue", 
                        size: "xs", 
                        stock: true
                        )

item_2 = Target::StoreItem.new(
                        item: "pants", 
                        color: "black", 
                        size: "28", 
                        stock: false
                        )
item_3 = Target::StoreItem.new(
                        item: "shoes", 
                        color: "brown", 
                        size: "8", 
                        stock: true
                        )

item_4 = Target::Food.new(
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