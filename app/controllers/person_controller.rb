class PersonController < ApplicationController


  def index
    if  person_params.role =="actor"
      @actor = Actor.create(person_params)
    else
      @director = Director.create(person_params)
    end
  end

  def new

  end

  def create

  end


  def person_params
    params.require(:person).permit(:first_name, :last_name, :birth_date, :description, :role)
  end

end
