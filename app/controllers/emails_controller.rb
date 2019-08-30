class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def new
  @email = Email.new()
  end

  def create
      @email = Email.create!(object: Faker::Internet.email , body: Faker::Movies::Ghostbusters.quote)
      respond_to do |format|
    if @email.save
      format.html { redirect_to root_path }
      format.js { }
    end
  end
  end

  def update
  end

  def destroy
  end
end
