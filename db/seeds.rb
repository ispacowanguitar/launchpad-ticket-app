['admin', 'customer'].each do |role|
  Role.find_or_create_by(name: role)
end

admin = User.new(email: "admin@launchpadtheaters.com", password: 'password', password_confirmation: 'password', role_id: 1)

unless User.find_by(email: "admin@launchpadtheaters.com")
 admin.save
end