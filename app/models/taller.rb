class Taller < ActiveRecord::Base
  belongs_to :profesor
  belongs_to :curso
end
