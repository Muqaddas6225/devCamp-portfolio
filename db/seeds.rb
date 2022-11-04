# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
3.times do |topic|
    Topic.create!(
        title:"My Topic post #{topic}")
end
puts "3 Topic created"

10.times do |blog|
    Blog.create!(
        title:"My Blog post #{blog}",
        topic_id: Topic.last.id,
        body:"ed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium 
        doloremque laudantium, totam rem aperiam, 
        eaque ipsa quae.ab illo inventore veritatis et quasi
         architecto beatae vitae dicta sunt explicabo. "
    )
end
puts "10 blogs created"


5.times do |skill|
    Skill.create!(
        title:"Rails #{skill}", 
        percentage_utilized: 76
    )
end

puts "5 skills created"

8.times do |portfolio|
    Portfolio.create!(
        title:"My Blog post #{portfolio}",
        subtitle: "ruby on rails",
        body:"ed ut perspiciatis unde omnis iste natus error sit 
        voluptatem accusantium doloremque laudantium, 
        totam rem aperiam, eaque ipsa quae ab illo inventore veritatis 
        et quasi architecto beatae vitae dicta sunt explicabo. ",
        main_image:"https://via.placeholder.com/350x200",
        thumb_image:"https://via.placeholder.com/600x400"
        
)
end
puts "8 Ruby on rails portfolio created"

1.times do |portfolio|
    Portfolio.create!(
        title:"My Blog post #{portfolio}",
        subtitle: "Angular",
        body:"ed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam vol
        uptatem quia voluptas sit aspernatur aut odit aut fugit, 
        sed quia consequuntur magni dolores eos qui ratione ",
        main_image:"https://via.placeholder.com/350x200",
        thumb_image:"https://via.placeholder.com/600x400"
        
)
end


puts "1 angular portfolio created"


# 3.times do |technology|
#     Technology.create!(
#         name:"My Blog post #{technology}",
#         portfolio_id: Portfolio.last.id
     
# )
# end


3.times do |technology|
    Portfolio.last.technologies.create!(
        name:"My Blog post #{technology}",
)
end
puts "3 technology created"