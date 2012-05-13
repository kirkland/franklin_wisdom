class MailController < ApplicationController
  def subscribe
    render :text => params.inspect and return
  end

  def unsubscribe
    render :text => params.inspect and return
  end
end
