class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :comment, :commenter

  validates :commenter, :presence => true
  validates :comment, :presence => true,
                      :length => { :minimum => 5 }
end
