class MailController < ApplicationController
  def subscribe
    @email_address = params[:email]

    if @email_address.present?
      @email = Email.new(:address => @email_address)
      if @email.save
        flash[:notice] = "Thanks for signing up. Your first email will come immediately. Please confirm your subscription by clicking the link in there."
      else
        flash[:error] = @email.errors.messages.values.last.last
      end
    else
      flash[:error] = "Please enter an email address."
    end

    redirect_to root_path
  end

  def unsubscribe
    render :text => params.inspect and return
  end
end
