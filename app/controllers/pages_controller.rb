class PagesController < ApplicationController

  def home
		@produits = Produit.all
	end

  def achat
  	id_user = current_user.compte.to_s
  	produit = Produit.where(id: params[:produit_id]).last
  	prix = produit.prix.to_s

  	url = 'http://localhost:3000/removeMoney/ext/?id='+ id_user +'&money=' + prix
		response = RestClient.get(url)
		@result = response.to_json

		#commande_create_path(:id_produit => produit.id)
		@commande = Commande.new
    @commande.id_client = current_user.id
    @commande.id_produit = produit.id
    @commande.date_achat = Date.today
    @commande.save
  end

end