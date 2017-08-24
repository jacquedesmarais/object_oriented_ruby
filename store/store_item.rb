require "./storable.rb"

module Target
  class StoreItem
    attr_reader :item, :color, :size, :stock
    attr_writer :stock
    include Storable

    def initialize(input_options)
      @item = input_options[:item]
      @color = input_options[:color]
      @size = input_options[:size]
      @stock = input_options[:stock]
    end
  end
end

