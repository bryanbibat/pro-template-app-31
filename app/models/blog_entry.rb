class BlogEntry < ActiveRecord::Base
  paginates_per 5
end
