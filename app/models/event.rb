class Event < ApplicationRecord
  def free? = price.blank? || price.zero?

  def self.upcoming
    where("starts_at > ?", Time.now).order("starts_at")
  end
end
