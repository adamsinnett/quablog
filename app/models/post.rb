class Post < ActiveRecord::Base
	has_many :comments, :dependent => :destroy

	scope :latest, order("created_at DESC")

	validates_presence_of :name, :on => :create, :message => "can't be blank"
	validates_presence_of :title, :on => :create, :message => "can't be blank"
end
