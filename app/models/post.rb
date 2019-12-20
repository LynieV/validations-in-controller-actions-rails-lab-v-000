class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(fiction nonfiction),
    message: "%{value} is not valid please provide either fiction or nonfiction" }
end
