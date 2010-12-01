class LettersController < ApplicationController
  def new
  end

  def create
    @message = params[:message]
    begin
      LetterMailer.letter_email(@email).deliver
    rescue
      render :action => 'send_error'
    end
  end

end
