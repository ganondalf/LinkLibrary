class Annotation < ActiveRecord::Base
    belongs_to :link
    belongs_to :user
end
