class Like < ApplicationRecord
  belongs_to :message
  belongs_to :user
  belongs_to :group
end
