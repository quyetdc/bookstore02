require 'rails_helper'

RSpec.describe Book, :type => :model do
  describe "Valid" do
  	it { expect(Book.new(name: "Ruby On Rails", price:"46.2", author_id:"2")).to be_valid }
  	it { expect(Book.new(name: "Ruby On Rails 1", price:"46.2", author_id:"2")).to be_valid }
  	it { expect(Book.new(name: "Ruby On Rails 1", price:"", author_id:"")).to be_valid }
  end
  describe "Invalid" do
  	it { expect(Book.new(name: "")).not_to be_valid }
  	it { expect(Book.new(name: "1ruby on rails")).not_to be_valid }
  	it { expect(Book.new(name: "Ruby & rails")).not_to be_valid }
  	it { expect(Book.new(name: "Ruby")).not_to be_valid }
  	it { expect(Book.new(name: "Ruby"*50)).not_to be_valid }
  	it { expect(Book.new(name: "rails validate", price: "rails" )).not_to be_valid }
  	it { expect(Book.new(name: "Ruby On rails", price:"46", author_id:"abc")).not_to be_valid }
  	it { expect(Book.new(name: "Ruby On rails", price:"46", author_id:"2.3")).not_to be_valid }
    it { expect(Book.new(name: "Ruby On rails", price:"46", category_id:"2.3")).not_to be_valid }
  end
end
