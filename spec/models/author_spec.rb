require 'rails_helper'

RSpec.describe Author, :type => :model do
  describe "Valid" do
  	it { expect(Author.new(name: "Tian Tran", nationality:"Viet Nam")).to be_valid }
  	it { expect(Author.new(name: "Tian Tran", nationality:"Viet Nam", birthday:"17-11-1991")).to be_valid }
  	it { expect(Author.new(name: "Tian Tran", nationality:"Viet Nam", birthday:"")).to be_valid }
  end
  describe "Invalid" do
  	it { expect(Author.new(name: "")).not_to be_valid}
    it { expect(Author.new(name: "Ruby", nationality:"Viet Nam")).not_to be_valid }
    it { expect(Author.new(name: "Tian Tran", nationality:"ruby")).not_to be_valid }
  	it { expect(Author.new(name: "Tian Tran", nationality:"")).not_to be_valid}
  	it { expect(Author.new(name: "Tian Tran 2", nationality:"Viet Nam")).not_to be_valid}
  	it { expect(Author.new(name: "Tian Tran", nationality:"345")).not_to be_valid}
  	it { expect(Author.new(name: "Tian & Tran", nationality:"Viet Nam")).not_to be_valid}
  	it { expect(Author.new(name: "Tian Tran", nationality:"Viet Nam & Japan")).not_to be_valid}
  	it { expect(Author.new(name: "Tian Tran", nationality:"Viet Nam", birthday: "ngay 17 thang 11 nam 1991")).not_to be_valid}
  	it { expect(Author.new(name: "Tian Tran", nationality:"Viet Nam", birthday:"17111991")).not_to be_valid }
  	it { expect(Author.new(name: "Tian Tran", nationality:"Viet Nam", birthday:"17 11 1991")).not_to be_valid }
  end
end
