class TodoCategory < ApplicationRecord
  belongs_to :category
  belongs_to :todo
end
