# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

numUsers = 50 # How many users to add to database
numTeams = 10 # How many teams to add to database
numPlayersPerTeam = 13 # How many players on each team to add to database
teams = []

# Create initial user
# User.create!(name: "Example User",
#               email: "example@railstutorial.org",
#               password: "foobar",
#               password_confirmation: "foobar",
#               admin: true,
#               activated: true,
#               activated_at: Time.zone.now)

# Create additional users
# (numUsers-1).times do |n|
#   name = Faker::Name.name
#   email = "example-#{n+1}@railstutorial.org"
#   password = "password"
#   User.create!(name: name,
#                 email: email,
#                 password: password,
#                 password_confirmation: password,
#                 activated: true,
#                 activated_at: Time.zone.now)
# end

def completely_random_player(team_id)

  # Create the pitch types
  pitch_types_1 = ['FA']
  pitch_types_2 = ['FT','SL','CU','CH']
  pitch_types_3 = ['SI','FC','FS']
  pitch_types_4 = ['FO','KN','SC','KC']
  pitch_types_5 = ['EP','UN']

  pitches = Array.new

  total_pitches = rand(2..5)

  while pitches.length < total_pitches do
    if pitch_types_1.length > 0 then pitches.push(pitch_types_1.delete_at(rand(pitch_types_1.length))) end
    rand(1..4).times do
      if pitch_types_2.length > 0 then pitches.push(pitch_types_2.delete_at(rand(pitch_types_2.length))) end
      if pitches.length >= total_pitches then break end
    end
    rand(0..1).times do
      if pitch_types_3.length > 0 then pitches.push(pitch_types_3.delete_at(rand(pitch_types_3.length))) end
    end
    rand(0..1).times do
      if pitch_types_4.length > 0 then pitches.push(pitch_types_4.delete_at(rand(pitch_types_4.length))) end
    end
    rand(0..1).times do
      if pitch_types_5.length > 0 then pitches.push(pitch_types_5.delete_at(rand(pitch_types_5.length))) end
    end
  end

  extra_pitches = 5 - total_pitches
  extra_pitches.times do
    pitches.push('--')
  end

  Player.create!(team_id: team_id,
                              first_name: Faker::Name.first_name,
                              last_name: Faker::Name.last_name,
                              age: rand(17..40),
                              height: rand(66..78),
                              weight: rand(160..300),
                              position: ['P','C','1B','2B','3B','SS','LF','CF','RF'].sample,
                              salary: rand(500000..20000000),
                              power: rand(1..100),
                              contact: rand(1..100),
                              speed: rand(1..100),
                              patience: rand(1..100),
                              plate_vision: rand(1..100),
                              pull_amount: rand(1..100),
                              uppercut_amount: rand(1..100),
                              batting_average: rand(1..100),
                              movement: rand(1..100),
                              control: rand(1..100),
                              location: rand(1..100),
                              agility: rand(1..100),
                              reactionTime: rand(1..100),
                              armStrength: rand(1..100),
                              fieldGrounder: rand(1..100),
                              fieldLiner: rand(1..100),
                              fieldFlyball: rand(1..100),
                              fieldPopup: rand(1..100),
                              throwShort: rand(1..100),
                              throwMedium: rand(1..100),
                              throwLong: rand(1..100),
                              intelligence: rand(1..100),
                              endurance: rand(1..100),
                              atbats: 0,
                              runs: 0,
                              hits: 0,
                              doubles: 0,
                              triples: 0,
                              home_runs: 0,
                              rbi: 0,
                              walks: 0,
                              strikeouts: 0,
                              stolen_bases: 0,
                              caught_stealing: 0,
                              errors_committed: 0,
                              assists: 0,
                              putouts: 0,
                              chances: 0,
                              outs_recorded: 0,
                              hits_allowed: 0,
                              runs_allowed: 0,
                              earned_runs_allowed: 0,
                              walks_allowed: 0,
                              strikeouts_recorded: 0,
                              home_runs_allowed: 0,
                              total_pitches: 0,
                              strikes_thrown: 0,
                              balls_thrown: 0,
                              intentional_walks_allowed: 0,
                              zone_1_pitches: 0,
                              zone_2_pitches: 0,
                              zone_3_pitches: 0,
                              zone_4_pitches: 0,
                              zone_5_pitches: 0,
                              zone_6_pitches: 0,
                              zone_7_pitches: 0,
                              zone_8_pitches: 0,
                              zone_9_pitches: 0,
                              zone_10_pitches: 0,
                              zone_11_pitches: 0,
                              zone_12_pitches: 0,
                              zone_13_pitches: 0,
                              zone_14_pitches: 0,
                              zone_15_pitches: 0,
                              zone_16_pitches: 0,
                              zone_17_pitches: 0,
                              zone_18_pitches: 0,
                              zone_19_pitches: 0,
                              zone_20_pitches: 0,
                              zone_21_pitches: 0,
                              zone_22_pitches: 0,
                              zone_23_pitches: 0,
                              zone_24_pitches: 0,
                              zone_25_pitches: 0,
                              zone_26_pitches: 0,
                              zone_27_pitches: 0,
                              zone_28_pitches: 0,
                              zone_29_pitches: 0,
                              zone_30_pitches: 0,
                              zone_31_pitches: 0,
                              zone_32_pitches: 0,
                              zone_33_pitches: 0,
                              zone_34_pitches: 0,
                              zone_35_pitches: 0,
                              zone_36_pitches: 0,
                              zone_37_pitches: 0,
                              zone_38_pitches: 0,
                              zone_39_pitches: 0,
                              zone_40_pitches: 0,
                              zone_41_pitches: 0,
                              zone_42_pitches: 0,
                              zone_43_pitches: 0,
                              zone_44_pitches: 0,
                              zone_45_pitches: 0,
                              zone_46_pitches: 0,
                              zone_47_pitches: 0,
                              zone_48_pitches: 0,
                              zone_49_pitches: 0,
                              zone_50_pitches: 0,
                              zone_51_pitches: 0,
                              zone_52_pitches: 0,
                              zone_53_pitches: 0,
                              zone_54_pitches: 0,
                              zone_55_pitches: 0,
                              zone_56_pitches: 0,
                              zone_57_pitches: 0,
                              zone_58_pitches: 0,
                              zone_59_pitches: 0,
                              zone_60_pitches: 0,
                              zone_61_pitches: 0,
                              zone_62_pitches: 0,
                              zone_63_pitches: 0,
                              zone_64_pitches: 0,
                              zone_65_pitches: 0,
                              zone_66_pitches: 0,
                              zone_67_pitches: 0,
                              zone_68_pitches: 0,
                              zone_69_pitches: 0,
                              zone_70_pitches: 0,
                              zone_71_pitches: 0,
                              zone_72_pitches: 0,
                              throwing_hand: ["LEFT","RIGHT"].sample,
                              hitting_side: ["LEFT","RIGHT"].sample,
                              pitch_1: pitches[0],
                              pitch_2: pitches[1],
                              pitch_3: pitches[2],
                              pitch_4: pitches[3],
                              pitch_5: pitches[4] )



end

def completely_average_player(team_id)

  # Create the pitch types
  pitch_types_1 = ['FA']
  pitch_types_2 = ['FT','SL','CU','CH']
  pitch_types_3 = ['SI','FC','FS']
  pitch_types_4 = ['FO','KN','SC','KC']
  pitch_types_5 = ['EP','UN']

  pitches = Array.new

  total_pitches = rand(2..5)

  while pitches.length <= total_pitches do
    pitches.push(pitch_types_1.sample.pop)
    rand(1..4).times do
      pitches.push(pitch_types_2.sample.pop)
    end
    rand(0..1).times do
      pitches.push(pitch_types_3.sample.pop)
    end
    rand(0..1).times do
      pitches.push(pitch_types_4.sample.pop)
    end
    rand(0..1).times do
      pitches.push(pitch_types_5.sample.pop)
    end
  end

  extra_pitches = 5 - total_pitches
  extra_pitches.times do
    pitches.push('--')
  end

  Player.create!(team_id: team_id,
                              first_name: Faker::Name.first_name,
                              last_name: Faker::Name.last_name,
                              age: rand(17..40),
                              height: rand(66..78),
                              weight: rand(160..300),
                              position: ['P','C','1B','2B','3B','SS','LF','CF','RF'].sample,
                              salary: rand(500000..20000000),
                              power: 50,
                              contact: 50,
                              speed: 50,
                              patience: 50,
                              plate_vision: 50,
                              pull_amount: 50,
                              uppercut_amount: 50,
                              batting_average: 50,
                              movement: 50,
                              control: 50,
                              location: 50,
                              agility: 50,
                              reactionTime: 50,
                              armStrength: 50,
                              fieldGrounder: 50,
                              fieldLiner: 50,
                              fieldFlyball: 50,
                              fieldPopup: 50,
                              throwShort: 50,
                              throwMedium: 50,
                              throwLong: 50,
                              intelligence: 50,
                              endurance: 50,
                              atbats: 0,
                              runs: 0,
                              hits: 0,
                              doubles: 0,
                              triples: 0,
                              home_runs: 0,
                              rbi: 0,
                              walks: 0,
                              strikeouts: 0,
                              stolen_bases: 0,
                              caught_stealing: 0,
                              errors_committed: 0,
                              assists: 0,
                              putouts: 0,
                              chances: 0,
                              outs_recorded: 0,
                              hits_allowed: 0,
                              runs_allowed: 0,
                              earned_runs_allowed: 0,
                              walks_allowed: 0,
                              strikeouts_recorded: 0,
                              home_runs_allowed: 0,
                              total_pitches: 0,
                              strikes_thrown: 0,
                              balls_thrown: 0,
                              intentional_walks_allowed: 0,
                              zone_1_pitches: 0,
                              zone_2_pitches: 0,
                              zone_3_pitches: 0,
                              zone_4_pitches: 0,
                              zone_5_pitches: 0,
                              zone_6_pitches: 0,
                              zone_7_pitches: 0,
                              zone_8_pitches: 0,
                              zone_9_pitches: 0,
                              zone_10_pitches: 0,
                              zone_11_pitches: 0,
                              zone_12_pitches: 0,
                              zone_13_pitches: 0,
                              zone_14_pitches: 0,
                              zone_15_pitches: 0,
                              zone_16_pitches: 0,
                              zone_17_pitches: 0,
                              zone_18_pitches: 0,
                              zone_19_pitches: 0,
                              zone_20_pitches: 0,
                              zone_21_pitches: 0,
                              zone_22_pitches: 0,
                              zone_23_pitches: 0,
                              zone_24_pitches: 0,
                              zone_25_pitches: 0,
                              zone_26_pitches: 0,
                              zone_27_pitches: 0,
                              zone_28_pitches: 0,
                              zone_29_pitches: 0,
                              zone_30_pitches: 0,
                              zone_31_pitches: 0,
                              zone_32_pitches: 0,
                              zone_33_pitches: 0,
                              zone_34_pitches: 0,
                              zone_35_pitches: 0,
                              zone_36_pitches: 0,
                              zone_37_pitches: 0,
                              zone_38_pitches: 0,
                              zone_39_pitches: 0,
                              zone_40_pitches: 0,
                              zone_41_pitches: 0,
                              zone_42_pitches: 0,
                              zone_43_pitches: 0,
                              zone_44_pitches: 0,
                              zone_45_pitches: 0,
                              zone_46_pitches: 0,
                              zone_47_pitches: 0,
                              zone_48_pitches: 0,
                              zone_49_pitches: 0,
                              zone_50_pitches: 0,
                              zone_51_pitches: 0,
                              zone_52_pitches: 0,
                              zone_53_pitches: 0,
                              zone_54_pitches: 0,
                              zone_55_pitches: 0,
                              zone_56_pitches: 0,
                              zone_57_pitches: 0,
                              zone_58_pitches: 0,
                              zone_59_pitches: 0,
                              zone_60_pitches: 0,
                              zone_61_pitches: 0,
                              zone_62_pitches: 0,
                              zone_63_pitches: 0,
                              zone_64_pitches: 0,
                              zone_65_pitches: 0,
                              zone_66_pitches: 0,
                              zone_67_pitches: 0,
                              zone_68_pitches: 0,
                              zone_69_pitches: 0,
                              zone_70_pitches: 0,
                              zone_71_pitches: 0,
                              zone_72_pitches: 0,
                              throwing_hand: ["LEFT","RIGHT"].sample,
                              hitting_side: ["LEFT","RIGHT"].sample,
                              pitch_1: pitches[0],
                              pitch_2: pitches[1],
                              pitch_3: pitches[2],
                              pitch_4: pitches[3],
                              pitch_5: pitches[4])
end

# Create teams
numTeams.times do
  city = Faker::Address.city
  name = Faker::Team.creature.capitalize
  league = ["NL","AL"].sample
  division = ["East","Central","West"].sample
  stadium = name + " " + ["Stadium","Field","Park","Coliseum","Center"].sample
  capacity = 45000
  newTeam = Team.create!(city: city,
  name: name,
  league: league,
  division: division,
  stadium: stadium,
  capacity: capacity)
  teams.unshift(newTeam)
end

# Create players for each team
teams.each do |team|
  players = []
  numPlayersPerTeam.times do
    newPlayer = completely_random_player(team.id)
    players.unshift(newPlayer)
  end
  city = Faker::Address.city
  name = Faker::Team.creature.capitalize
  league = ["NL","AL"].sample
  division = ["East","Central","West"].sample
  stadium = name + " " + ["Stadium","Field","Park","Coliseum","Center"].sample
  capacity = 45000
  team.update(
  catcher: players[12].id,
  designated_hitter: players[11].id,
  first_base: players[10].id,
  second_base: players[9].id,
  third_base: players[8].id,
  shortstop: players[7].id,
  left_field: players[6].id,
  center_field: players[5].id,
  right_field: players[4].id,
  lineup1: 0,
  lineup2: 1,
  lineup3: 2,
  lineup4: 3,
  lineup5: 4,
  lineup6: 5,
  lineup7: 6,
  lineup8: 7,
  lineup9: 8)
end
