class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  def solve
  		@langs = HTTParty.get('http://api.hackerrank.com/checker/languages.json')
  		@names = @langs["languages"]["names"]
  		@codes = @langs["languages"]["codes"]
      # @ques=Question.find(params[:questions_id])
      @ques=Question.where(id: params[:id]).first
      # byebug
      # @ques=Question.find(id)

  	end

  	def evaluate

  		permitted = params.permit("source","lang","testcases","api_key","format")
  		response = HTTParty.post("http://api.hackerrank.com/checker/submission.json",:body => permitted);
      @val=JSON.parse(response.body)
      # return redirect_to '/solve'
      
      render '/solve'
      # byebug

  	end
end
