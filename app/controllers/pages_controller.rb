class PagesController < ApplicationController

  def home
	#url = 'http://localhost:3000/bankAccount/ext/?id=3'
  end

  def achat
  	id_user = current_user.compte.to_s

  	url = 'http://localhost:3000/removeMoney/ext/?id='+ id_user +'&money=5'
	response = RestClient.get(url)
	@result = response.to_json 
  end

end