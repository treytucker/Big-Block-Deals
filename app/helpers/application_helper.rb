module ApplicationHelper
  def title
    @base = "Big Block Deals"
    @title = @title ? "#{@base} | #{@title}" : "#{@base}"
    return @title
  end
end
