class Post < ActiveRecord::Base
  scope :active, -> { where(deleted: false) }


  def destroy
    update(deleted: true)
  end
end
