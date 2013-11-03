# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


gender = ["male", "female"]
ccsd_no = 3333333
user_kind = ["member", "board", "admin"]

250.times do 
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  user = User.create!(
  	:first_name => first_name,
    :last_name => last_name,
    :street_address_1 => Faker::Address.street_address,
    :city => "Las Vegas",
    :state => "NV",
    :zip_code => Faker::Address.zip_code,
    :cell_phone => Faker::PhoneNumber.cell_phone,
    :user_kind => user_kind.sample,
    :gender => gender.sample,
    :birthday => rand(1940..2005).to_s + "-" + rand(01..12).to_s + "-" + rand(01..30).to_s,
    :email => Faker::Internet.email,
    :username => first_name,
    :password => "password")

  p "#{user.username} #{user.last_name} created" 
end

Membership.create(kind: "one-year-individual", price: 25, duration: 365) #1
Membership.create(kind: "two-year-individual", price: 40, duration: 730) #2
Membership.create(kind: "three-year-individual", price: 50, duration: 1095) #3
Membership.create(kind: "lifetime-individual", price: 200, duration: 20000) #4

Membership.create(kind: "one-year-family", price: 30, duration: 365) #5
Membership.create(kind: "two-year-family", price: 50, duration: 730) #6
Membership.create(kind: "three-year-family", price: 65, duration: 1095) #7
Membership.create(kind: "lifetime-family", price: 250, duration: 1095) #8

Membership.create(kind: "one-year-student", price: 15, duration: 365) #9
Membership.create(kind: "two-year-student", price: 25, duration: 730) #10
Membership.create(kind: "three-year-student", price: 30, duration: 1095) #11


# create one-year family memberships
6.times do 
	um = UserMembership.create(membership_id: 5)
	rand(2..6).times do
		user = User.all.sample
		if user.membership_id then
			next
		end
		user.membership_id = um.id
		user.save!
	end
end

# create two-year family memberships
5.times do 
	um = UserMembership.create(membership_id: 6)
	rand(2..6).times do
		user = User.all.sample
		if user.membership_id then
			next
		end
		user.membership_id = um.id
		user.save!
	end
end

# create three-year family memberships
3.times do 
	um = UserMembership.create(membership_id: 7)
	rand(2..6).times do
		user = User.all.sample
		if user.membership_id then
			next
		end
		user.membership_id = um.id
		user.save!
	end
end

# create lifetime family memberships
4.times do 
	um = UserMembership.create(membership_id: 8)
	rand(2..6).times do
		user = User.all.sample.membership_id then
			next
		end
		user.membership_id = um.id
		user.save!
	end
end

# create one-year individual memberships
120.times do 
	um = UserMembership.create(membership_id: 1)
	user = User.all.sample 
	user.membership_id = um.id
	user.save!
end
