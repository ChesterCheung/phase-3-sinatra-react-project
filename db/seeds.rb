puts "🌱 Seeding spices..."

workout_1 = Workout.create(name: "Chest", description: "Exercises to build your chest")
workout_2 = Workout.create(name: "Shoulders", description: "Exercises to build your shoulders")
workout_3 = Workout.create(name: "Back", description: "Exercises to build your back")
workout_4= Workout.create(name: "Arms", description: "Exercises to build your arms")
workout_5 = Workout.create(name: "Legs", description: "Exercises to build your legs")

exercise_1 = Exercise.create(name: "Bench Press", favorite: false, url: "https://image.shutterstock.com/z/stock-vector-man-doing-barbell-bench-press-chest-press-flat-vector-illustration-isolated-on-different-layers-600w-1841766727.jpg", instructions: "Using a straight bar, lower bar to middle of chest, and push up with arms shoulder width apart", workout_id: workout_1.id)

exercise_2 = Exercise.create(name: "Push Up", favorite: false, url: "https://image.shutterstock.com/z/stock-vector-man-doing-barbell-bench-press-chest-press-flat-vector-illustration-isolated-on-different-layers-600w-1841766727.jpg", instructions: "Start with arms extended, hands next to chest, palms on floor, lower body to ground and push back up to starting position", workout_id: workout_1.id)

exercise_3 = Exercise.create(name: "Pull up", favorite: false, url: "https://image.shutterstock.com/image-vector/man-doing-pull-ups-exercise-600w-1992470651.jpg", instructions: "Grab bar with hands shoulder width apart, palms facing outward, then pull up until chin is above bar", workout_id: workout_2.id)

exercise_4 = Exercise.create(name: "Shoulder Press", favorite: false, url: "https://www.shutterstock.com/image-vector/woman-doing-dumbbell-overhead-shoulder-press-600w-2001497828.jpg", instructions: "Using dumbells, lower dumbells inline with shoulder to side of head, creating a right angle, then push up straight, palms facing outward", workout_id: workout_2.id)

puts "✅ Done seeding!"


