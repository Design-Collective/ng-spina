module Spina
  Page.class_eval do

    # Model Relationships
    #---------------------------------
    # belongs_to :model
    # has_many :model
    
    # Scopes
    #---------------------------------
    # scope :published, lambda { where('published_at < = ?', Time.now) }

    # Instance Methods
    #---------------------------------
    # attr_accessor :baz

    def time_since_created
      Time.current - created_at
    end

    # Class Methods
    #---------------------------------

    # class << self
    #   def method
    #     # To Do - Define issues here instead of in controller.
    #   end
    # end
  end
end