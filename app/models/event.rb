class Event < ActiveRecord::Base

  validates :year,
            :donation_goal,
            :donation_text,
            :about_text,
            :donation_url,
            presence: true

  def to_s
    "wat"
  end

end
