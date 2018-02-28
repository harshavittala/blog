class Post < ApplicationRecord
	belongs_to :creator, foreign_key: :created_by, class_name: "User"
	validates :title, presence: true,length: { minimum: 5 }
	validates :content,presence: true
end
