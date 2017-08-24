require "./store_item.rb"
require "./storable.rb"

module Target
  class Food < StoreItem
    attr_reader :shelf_life
    include Storable

    def initialize(input_options)
      super
      @shelf_life = input_options[:shelf_life]
    end
  end
end