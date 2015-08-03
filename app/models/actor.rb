class Actor < ActiveRecord::Base
  has_and_belongs_to_many :movies

  def Actor.age
    yob = Actor.find(:year_of_birth)
    age = Time.now.year - yob
  end

end
