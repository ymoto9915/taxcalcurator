class Price
  @@taxrate = 0.10

  attr_reader :price

  def initialize(price)
    @price = price
  end

  def self.taxrate
    @@taxrate
  end

  def include_tax
    tax_included = @price * (1.0 + @@taxrate)
    tax_included.to_i
  end

end