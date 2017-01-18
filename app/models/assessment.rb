class Assessment < ApplicationRecord
  belongs_to :story

  validates :story_id, presence: true

  def self.importance
    return ['not important', 'neutral', 'low importance', 'important', 'very important', 'critical component']
  end

  def self.valence
    return ['very negative', 'negative', 'neutral', 'positive', 'super positive', 'does not apply to me']
  end

  def self.match_strength
    return ['weakly matches', 'matches', 'strongly matches', 'perfectly defines the company value']
  end
end
