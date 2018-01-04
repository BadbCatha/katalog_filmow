class Movie < ApplicationRecord
	validates :title, presence: true, length: { minimum: 1 }
	validates :premiere_date, presence: true, length: { minimum: 4 }
	validates :length, presence: true, length: { minimum: 2 }
	validates :genres, presence: true, length: { minimum: 4 }
	validates :director, presence: true, length: { minimum: 5 }
	validates :screenwriter, presence: true, length: { minimum: 5 }
	validates :country, presence: true, length: { minimum: 4 }
	validates :text, presence: true, length: { minimum: 20 }
	
end
end
