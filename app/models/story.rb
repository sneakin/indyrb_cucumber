class Story < ActiveRecord::Base
  belongs_to :project

  validates_presence_of :title, :body
end
