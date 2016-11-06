class PokemonsController < ApplicationController
    def create
        
    end

    def capture
        p = Pokemon.find(params[:id])
        p.trainer_id = current_trainer.id
        p.save
        redirect_to root_path
    end
    
    def damage
        p = Pokemon.find(params[:p_id])
        p.Health = p.Health - 10
        p.save
        if p.Health <= 0
            p.delete
        end
        redirect_to '/trainers/' + params[:t_id].to_s
    end
    
    def new
  	    @pokemon = Pokemon.new
    end
    
    def create
        p = Pokemon.create(:name => params[:pokemon][:name], :Health => 100, :level => 1 )
        p.trainer_id = current_trainer.id
        p.save
        if p.name.blank?
            flash[:error] = "Please enter a name for your pokemon."
            redirect_to '/pokemons/new/'
        else
            if not p.valid?
                flash[:error] = "Name not unique."
                redirect_to '/pokemons/new/'
            else
                redirect_to '/trainers/' + current_trainer.id.to_s
            end
        end
    end
end
