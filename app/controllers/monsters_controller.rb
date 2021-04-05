class MonstersController < ApplicationController

    def index
        monsters = Monster.all

        render json: monsters
    end

    def show
        monster = Monster.find(params[:id])
    end

    def create
        monster = Monster.create!(monster_params)

        render json: monster
    end

    def destroy
        monster = Monster.find(params[:id])

        monster.destroy!

        render json: {}
    end

    private

    def monster_params
        params.require(:monster).permit(:type, :image_url)
    end

end
