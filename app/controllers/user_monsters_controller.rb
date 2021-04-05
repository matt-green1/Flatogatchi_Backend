class UserMonstersController < ApplicationController

    def index
        userMonsters = UserMonster.all

        render json: userMonsters
    end

    def show
        userMonster = UserMonster.find(params[:id])
        render json: userMonster.as_json.merge(monster: userMonster.monster)
    end

    def create
        userMonster = UserMonster.new(userMonster_params)
        userMonster.create_base_stats
        userMonster.save
        render json: userMonster.as_json.merge(monster: userMonster.monster)
        
    end

    def destroy
        userMonster = UserMonster.find(params[:id])

        userMonster.destroy!

        render json: {}
    end

    def update
        userMonster = UserMonster.find(params[:id])
        userMonster.update(userMonster_params)
        userMonster.fix_stats
        render json: userMonster.as_json.merge(monster: userMonster.monster)
    end

    private

    def userMonster_params
        params.require(:user_monster).permit(:hunger_level, :happiness, :power, :user_id, :monster_id, :name)
    end
end


