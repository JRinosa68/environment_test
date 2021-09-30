# location: spec/unit/unit_spec.rb
require 'rails_helper'
require 'date'

RSpec.describe Book, type: :model do

    it 'is valid with valid attributes' do
      title = described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: 12, published_date: Date.new(1997, 06, 26))
      expect(title).to be_valid
    end
  
    it 'is valid with valid attributes' do
      author = described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: 12, published_date: Date.new(1997, 06, 26))
      expect(author).to be_valid
    end
  
    it 'is valid with valid attributes' do
      price = described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: 12, published_date: Date.new(1997, 06, 26))
      expect(price).to be_valid
    end

    it 'is valid with valid attributes' do
      published_date = described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: 12, published_date: Date.new(1997, 06, 26))
      expect(published_date).to be_valid
    end    
    
end
