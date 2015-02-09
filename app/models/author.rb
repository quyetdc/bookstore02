class Author < ActiveRecord::Base
	has_many :books
	validates :name, :nationality, 
		presence: true,
		length: {
			minimum: 5,
			too_short: "must have at least %{count} words",
		},
		format: {
			with: /\A[a-zA-Z][a-zA-Z\s]+\z/,
			message: "Start is letters, only allows letters"
		}
	validates :birthday,
		allow_blank: true,
		format: {
			with: /\A([0-9]+)-([0-9]+)-([0-9]+)\z/,
			message: "17/11/1991 or 17-11-1991"
		}
end
