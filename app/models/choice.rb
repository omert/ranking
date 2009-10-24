class Choice < ActiveRecord::Base
  belongs_to :rankable_1, :polymorphic => true
  belongs_to :rankable_2, :polymorphic => true
  belongs_to :winner, :polymorphic => true
end
