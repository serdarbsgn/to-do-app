class Todo < ApplicationRecord
has_many :todo_categories
has_many :comments , dependent: :destroy
validates :title, presence: true, length: {minimum:5}
validates :description, presence: true, length: {minimum:5}
end
