require 'bundler'
require_relative 'models/model.rb'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/quiz' do
    erb :quizpage
  end
  
  post '/results' do
    interest_array = quiz_grade(params["interest"], params["manual_labor"], params["age_diff"], params["people_person"], params["teaching"], params["animal_fear"], params["own_pet"], params["have_children"], params["working_outside"], params["helping_people"], params["working_alone"])
    @interest_hash = {:education => {:"Tutor in NY" => "http://www.tutor.com",
                                    :"Sub 4 Free" => "http://substitute.com"},
                      :children => {:"Babysitters" => "http://www.babysitters.com",
                                   :"Kid Coachers" => "http://www.kidcoachers.com"},
                      :animals => {:"Cat care volunteers" => "https://www.volunteermatch.org/search/opp1808429.jsp",
                                  :"Dog Walkers" => "http://createthegood.org/volunteer/opportunity-details/13422"},
      :"helping the poor" => {:"Hunger Projects" => "https://www.newyorkcares.org/program-areas/hunger",
                                :"Jersey Cares" => "http://www.jerseycares.org/HOC__Volunteer_Opportunity_Search_Page?isSavedSearch=yes&txtdtFrm=01/13/14&dstnc=0&ssrs0=Hunger%20%26%20Homelessness&ctCn=All%20Countries"},
                      :enviroment => {:"Get The Filter Out" => "https://www.dosomething.org/campaigns/gtfo?source=campaigns",
                                     :"It's My Park" => "http://www.cityparksfoundation.org/partnerships-for-parks/its-my-park-day/"}}
    if interest_array.index(interest_array.max) == 0
      @first_choice = "education"
    
    elsif interest_array.index(interest_array.max) == 1
      @first_choice = "children"
      
    elsif interest_array.index(interest_array.max) == 2
      @first_choice = "animals"
      
    elsif interest_array.index(interest_array.max) == 3
      @first_choice = "helping the poor"
      
    elsif interest_array.index(interest_array.max) == 4
      @first_choice = "enviroment"
    end
    erb :results
    
  end
end