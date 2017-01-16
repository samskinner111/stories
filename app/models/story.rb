class Story < ApplicationRecord
  validates_presence_of :description, :story_type

  def self.story_types
    return ['behavior', 'process', 'saying']
  end
end
