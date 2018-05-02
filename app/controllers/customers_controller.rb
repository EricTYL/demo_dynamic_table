class CustomersController < ApplicationController
  def index
    keys = []
    @customers = Customer.all
    @customers.each do |c|
      c.items.each do |k, _v|
        keys << k
      end
    end
    @items_list = keys.uniq.sort
  end
end
