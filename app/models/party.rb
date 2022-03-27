class Party < ActiveRecord::Base
    has_many :guests
end