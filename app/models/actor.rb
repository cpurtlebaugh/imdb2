class Actor < ActiveRecord::Base
  has_and_belongs_to_many :movies

  def age
    @actor = Actor.find_by_id(id)
    Time.now.year - @actor.year_of_birth
  end
end
