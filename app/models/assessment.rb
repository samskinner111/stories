class Assessment < ApplicationRecord
  belongs_to :story

  validates :story_id, presence: true
end
