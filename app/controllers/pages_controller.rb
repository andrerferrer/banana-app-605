class PagesController < ApplicationController
  def about
    # hidden: render about.html.erb
  end

  def contact
    # this instance var is going to the view
    @team_mates = %w[Emanuele Maxim Gyorgyi Charles Hannah] 
    # hidden: render contact.html.erb

    if params[:member] # if it exists, we filter
      @team_mates = @team_mates.filter { |team_mate| team_mate == params[:member] }
    end
  end

  def home
    # hidden: render home.html.erb
  end
end
