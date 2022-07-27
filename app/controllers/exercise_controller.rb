class ExerciseController < ApplicationController
    
    get "/exercises" do 
        allExercises = Exercise.all
        allExercises.to_json
    end

    post "/exercises" do 
        createExercise = Exercise.create(name:params[:name], muscle_group:params[:muscle_group], url:params[:url], instructions:params[:instructions], workout_id:params[:workout_id])
        createExercise.to_json
    end

    patch "/exercises/:id" do
        exercise = Exercise.find(params[:id])
        exercise.update(name:params[:name], muscle_group:params[:muscle_group], url:params[:url], instructions:params[:instructions], workout_id:params[:workout_id]).to_json

    end

    delete "/exercises/:id" do
        deleteExercise = Exercise.find(params[:id])
        deleteExercise.destroy
        deleteExercise.to_json
    end


end