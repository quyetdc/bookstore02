class Book < ActiveRecord::Base
	belongs_to :author
	belongs_to :category
	validates :name,
		presence: true, 
		length: {
			minimum: 6,
			maximum: 100,
			too_short: "must have at least %{count} words",
			too_long: "must have at most %{count} words"
		}, # do dai tu 6-100
		format: {
			with: /\A[a-zA-Z][a-zA-Z0-9\s]+\z/,
			message: "Start is letters, only allows letters and number"
		}
	validates :author_id,
		allow_blank: true,
		numericality: { only_integer: true } #chi chua so tu nhien
	validates :price,
		allow_blank: true,
		numericality: true #la so
	validates :category_id,
		allow_blank: true,
		numericality: { only_integer: true } #chi chua so tu nhien

end