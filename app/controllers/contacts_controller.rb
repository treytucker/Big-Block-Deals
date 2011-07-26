class ContactsController < ApplicationController
    def index
      @content = Contact.last
    end

    def edit
      @content = Contact.last
    end

    def update
      @content = Contact.new(params[:contact])
      if @content.valid?
        @content.save
        redirect_to :about_uses_index
      else
        render :edit 
      end
    end
  end