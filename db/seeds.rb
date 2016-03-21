['admin', 'customer'].each do |role|
  Role.find_or_create_by(name: role)
end

User.create!([
  
  {first_name: nil, last_name: nil, email: "admin@launchpadtheaters.com", encrypted_password: "$2a$10$oe1DcKirzlKO0srjpJWkaeKH/ERQzssgLxNcfsqxjeW3wqessra9S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 6, current_sign_in_at: "2016-03-20 19:17:05", last_sign_in_at: "2016-03-19 07:56:04", current_sign_in_ip: "::1", last_sign_in_ip: "::1", role_id: 1}
])
Auditorium.create!([
  {seating_capacity: 150},
  {seating_capacity: 125},
  {seating_capacity: 300},
  {seating_capacity: 250},
  {seating_capacity: 3},
  {seating_capacity: 3}
])
Movie.create!([
  {title: "The Matrix", description: "Probably one of the best movies of all time, where you end up questioning your very existence", duration: 2, image_url: "https://www.movieposter.com/posters/archive/main/9/A70-4902"},
  {title: "Home Alone", description: "A movie about a kid who gets left home alone and then a bunch of stuff happens that I forget", duration: 2, image_url: "http://images4.fanpop.com/image/photos/24400000/Home-Alone-Poster-home-alone-24424262-1076-1500.jpg"},
  {title: "The Big Lebowski", description: "A movie about a bunch of dudes who like to go bowling and stuff", duration: 3, image_url: "https://ccaminha.files.wordpress.com/2016/01/02-o-grande-lebowski.jpg"},
  {title: "Gladiator", description: "I never saw this movie, so this is the worst description ever. Oh well. ", duration: 3, image_url: "http://quotesaga.s3.amazonaws.com/movie/QS_gladiator.jpg"}
])
Order.create!([
  {user_id: nil, showing_id: 1, name: "Alex Ispa-Cowan", email: "admin@launchpadtheaters.com"},
  {user_id: nil, showing_id: 1, name: "Billy Bob", email: "admin@launchpadtheaters.com"},
  {user_id: nil, showing_id: 1, name: "Jimmy John", email: "admin@launchpadtheaters.com"}
])
Role.create!([
  {name: "admin"},
  {name: "customer"}
])
Showing.create!([
  {start_time: "2016-03-19 03:25:42", movie_id: 1, auditorium_id: 1},
  {start_time: "2016-03-19 05:26:12", movie_id: 1, auditorium_id: 1},
  {start_time: "2016-03-20 15:17:24", movie_id: 1, auditorium_id: 2},
  {start_time: "2016-03-20 19:17:50", movie_id: 1, auditorium_id: 2},
  {start_time: "2016-03-21 00:00:00", movie_id: 3, auditorium_id: 2},
  {start_time: "2016-03-21 00:00:00", movie_id: 3, auditorium_id: 2},
  {start_time: "2016-03-21 06:12:00", movie_id: 3, auditorium_id: 2},
  {start_time: "2016-03-21 05:19:00", movie_id: 1, auditorium_id: 5}
])
Ticket.create!([
  {user_id: 1, showing_id: 1, name: nil, email: nil},
  {user_id: 1, showing_id: 2, name: nil, email: nil},
  {user_id: 1, showing_id: 1, name: nil, email: nil},
  {user_id: nil, showing_id: 1, name: "MY NAME!!!!", email: "admin@launchpadtheaters.com"},
  {user_id: nil, showing_id: 2, name: "Jimmy Dean", email: "alex@gmail.com"},
  {user_id: nil, showing_id: 15, name: "Alexander Ispa-Cowan", email: "admin@launchpadtheaters.com"},
  {user_id: nil, showing_id: 15, name: "Alex", email: "admin@launchpadtheaters.com"},
  {user_id: nil, showing_id: 15, name: "Jim", email: "admin@launchpadtheaters.com"}
])
