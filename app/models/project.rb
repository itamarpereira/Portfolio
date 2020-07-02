class Project < ApplicationRecord
  belongs_to :selection
  has_one_attached :photo
end
