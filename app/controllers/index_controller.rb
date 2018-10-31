class IndexController < ApplicationController
  def index
    i = 1
    @params = params["id"]
    @gossips_author = []
    @gossips_content = []
    @gossips = Gossip.all
    @gossips.count.times do
    @gossips_author << Gossip.find(i).author
    @gossips_content << Gossip.find(i).content
    i += 1
   end
  end

  def contact
  	puts "Voici les params #{params}"
  end

  def team
  	puts "Voici les params #{params}"
    @random_number = rand(1000)
  end

  def gossip
    @params = params["id"]
  end
end
