class Story < ApplicationRecord
  has_many :assessments, dependent: :destroy

  validates :description, presence: true
  validates :story_type, presence: true

  def self.story_types
    return %w[behavior process saying]
  end
end
