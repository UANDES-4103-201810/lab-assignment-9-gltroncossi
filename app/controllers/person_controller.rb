class PersonController < ApplicationController
  def index
    @actors = Actor.all
    @directors = Director.all
  end

  def new
  end

  def create

    if params[:type] == "Actor"
      @actor = Actor.create(first_name:params[:first_name], last_name:params[:last_name], birth_date:params[:birth_date], description:params[:description])
    else
      @director = Director.create(first_name:params[:first_name], last_name:params[:last_name], birth_date:params[:birth_date], description:params[:description])
    end

  end
end