class Ranking < ActiveRecord::Base
  belongs_to :criterion
  belongs_to :rankable, :polymorphic => true

end
