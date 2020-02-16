class Calculator < ApplicationRecord
	validates :height, format: { without: /\A[a-zA-Z]+\z/, message: "only allow numbers (and dot)"}
	validates :weight, format: { without: /\A[a-zA-Z]+\z/, message: "only allow numbers (and dot)"}
end
