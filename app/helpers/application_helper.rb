module ApplicationHelper
  def mark(item)
    if item.important == 1
        "!!!"
      else
        " "
      end
    end
    end


