class Item < ActiveRecord::Base
  def values
    {
      id: id, check: check, color: color, text: text
    }
  end
end