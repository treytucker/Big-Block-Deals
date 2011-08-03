class BasicsController < ApplicationController

  BASIC_CONTROLLERS.each do |f|
  define_method(f.first) {
    @content = ActiveRecord.const_get(f.last[:model]).last
    @layout = f.last[:layout]
  }
  end

end