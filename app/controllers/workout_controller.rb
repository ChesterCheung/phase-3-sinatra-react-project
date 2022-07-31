class WorkoutController < ApplicationController
    
    get "/workouts" do 
        allWorkouts = Workout.all
        allWorkouts.to_json({include: :exercises})
    end

    get "/workouts/:id" do 
        Workout.find(params[:id]).to_json({include: :exercises})
    end

    post "/workouts" do 
        createWorkout = Workout.create(name:params[:name], description:params[:description])
        createWorkout.to_json
    end

end