# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Job.destroy_all
job1= Job.create!(title:"New Dentis Wanted",job_reference:"J180-A-18-230159",employer:'Central Advertising',department:'Surgery',salary_from:32000,salary_to:50000,job_type:'fixed',pay_scheme:'Other',function:'Asthma',note:'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',description:'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
job2= Job.create!(title:"Hot nurse wanted",job_reference:"N422-A-05-297451",employer:'Advertising',department:'Dentis',salary_from:20000,salary_to:25000, job_type:'permanent',pay_scheme:'All Night',function:'Care',note:'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',description:'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')

puts "2 jobs Created"
