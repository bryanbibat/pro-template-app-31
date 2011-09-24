class BlogEntry < ActiveRecord::Base
  paginates_per 5
  validates_presence_of :subject
end
