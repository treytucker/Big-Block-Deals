class BasicsController < ApplicationController

  BASIC_CONTROLLERS.each do |f|
  define_method(f.first) {
    @content = ActiveRecord.const_get(f.last[:model]).last
    @layout = f.last[:layout]
    @title = f.last[:title]
    @action = f.first
    @loaddc = f.last[:loaddc]
    @page = f.last[:form]
    unless f.last[:layout] == "full-width"
      @widgets = Widget.where("? = #{f.last[:form].to_s + "_active"}", true)
    end
  }
  end

end