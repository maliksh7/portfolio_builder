class UserContactController < ApplicationController
    def new
      @contact = Contact.new
    end
  
    def create
      @contact = Contact.new(contact_params)
  
      if @contact.save
        flash[:success] = t('flash.order.success')
        redirect_to root_path
      else
        flash.now[:error] = t('flash.order.error_html')
        render :new
      end
    end
  
    private
  
    def contact_params
      params.require(:order).permit(:name, :email, :subject, :message)
    end
  end