class WorkoutController < ApplicationController
    
    get "/workouts" do 
        allWorkouts = Workout.all
        binding.pry
        allWorkouts.to_json({include: :exercises})
    end
end