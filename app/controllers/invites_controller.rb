class InvitesController < ApplicationController
    def index
      @invites = Invit.all
    end
 
    def new
      @invit = Invit.new
    end
end