class ExerciseController < ApplicationController
    
    get "/exercises" do 
        allExercises = Exercise.all
        allExercises.to_json
    end

    get "/exercises/:id" do 
        Exercise.find(params[:id]).to_json
        
    end

    post "/exercises" do 
        createExercise = Exercise.create(name:params[:name], url:params[:url], instructions:params[:instructions], workout_id:params[:workout_id])
        createExercise.to_json
    end

    patch "/exercises/:id" do
        exercise = Exercise.find(params[:id])
        exercise.update(instructions:params[:instructions]).to_json

    end

    delete "/exercises/:id" do
        deleteExercise = Exercise.find(params[:id])
        deleteExercise.destroy
        deleteExercise.to_json
    end


end