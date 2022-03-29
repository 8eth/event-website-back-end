class Party < ActiveRecord::Base
    has_many :guests
    has_many :pictures
end