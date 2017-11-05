# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'ffaker'

numUsers = 2 # How many users to add to database
numTeams = 5 # How many teams per division to add to database
numPlayersPerTeam = 13 # How many players on each team to add to database
numPitchersPerTeam = 12 # How many pitchers on each team to add to database
teams = []

# Create initial user
User.create!(name: "Example User",
              email: "example@railstutorial.org",
              password: "foobar",
              password_confirmation: "foobar",
              admin: true,
              activated: true,
              activated_at: Time.zone.now,
              team_id: -1)

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

def generate_random_player_attributes
  attributes_hash = {
    "First Name" => FFaker::Name.first_name_male,
    "Last Name" => Faker::Name.last_name,
    "Age" => rand(17..40),
    "Height" => rand(66..78),
    "Weight" => rand(160..300),
    "Power" => rand(1..100),
    "Contact" => rand(1..100),
    "Speed" => rand(1..100),
    "Patience" => rand(1..100),
    "Plate Vision" => rand(1..100),
    "Pull Amount" => rand(1..100),
    "Uppercut Amount" => rand(1..100),
    "Batting Average" => rand(1..100),
    "Movement" => rand(1..100),
    "Control" => rand(1..100),
    "Location" => rand(1..100),
    "Agility" => rand(1..100),
    "Reaction Time" => rand(1..100),
    "Arm Strength" => rand(1..100),
    "Field Grounder" => rand(1..100),
    "Field Liner" => rand(1..100),
    "Field Flyball" => rand(1..100),
    "Field Popup" => rand(1..100),
    "Throw Short" => rand(1..100),
    "Throw Medium" => rand(1..100),
    "Throw Long" => rand(1..100),
    "Intelligence" => rand(1..100),
    "Endurance" => rand(1..100)
  }

  # Calculate salary based on other attributes
  salary = 0
  salary += attributes_hash["Power"]*10000
  salary += attributes_hash["Contact"]*5000
  salary += attributes_hash["Speed"]*8000
  salary += attributes_hash["Patience"]*5000
  salary += attributes_hash["Plate Vision"]*8000
  salary += attributes_hash["Uppercut Amount"]*2000
  salary += attributes_hash["Batting Average"]*10000
  salary += attributes_hash["Agility"]*3000
  salary += attributes_hash["Reaction Time"]*3000
  salary += attributes_hash["Field Grounder"]*1000
  salary += attributes_hash["Field Liner"]*1000
  salary += attributes_hash["Field Flyball"]*1000
  salary += attributes_hash["Field Popup"]*1000
  salary += attributes_hash["Throw Short"]*1000
  salary += attributes_hash["Throw Medium"]*1000
  salary += attributes_hash["Throw Long"]*1000
  salary += attributes_hash["Intelligence"]*2000
  salary += attributes_hash["Endurance"]*2000

  # Randomize salary a little bit
  salary *= rand(0.9..1.11)

  attributes_hash["Salary"] = salary
  attributes_hash
end
def generate_average_player_attributes
  attributes_hash = {
    "First Name" => FFaker::Name.first_name_male,
    "Last Name" => Faker::Name.last_name,
    "Age" => rand(17..40),
    "Height" => rand(66..78),
    "Weight" => rand(160..300),
    "Power" => 50,
    "Contact" => 50,
    "Speed" => 50,
    "Patience" => 50,
    "Plate Vision" => 50,
    "Pull Amount" => 50,
    "Uppercut Amount" => 50,
    "Batting Average" => 50,
    "Movement" => 50,
    "Control" => 50,
    "Location" => 50,
    "Agility" => 50,
    "Reaction Time" => 50,
    "Arm Strength" => 50,
    "Field Grounder" => 50,
    "Field Liner" => 50,
    "Field Flyball" => 50,
    "Field Popup" => 50,
    "Throw Short" => 50,
    "Throw Medium" => 50,
    "Throw Long" => 50,
    "Intelligence" => 50,
    "Endurance" => 50
  }

  # Calculate salary based on other attributes
  salary = 0
  salary += attributes_hash["Power"]*10000
  salary += attributes_hash["Contact"]*5000
  salary += attributes_hash["Speed"]*8000
  salary += attributes_hash["Patience"]*5000
  salary += attributes_hash["Plate Vision"]*8000
  salary += attributes_hash["Uppercut Amount"]*2000
  salary += attributes_hash["Batting Average"]*10000
  salary += attributes_hash["Agility"]*3000
  salary += attributes_hash["Reaction Time"]*3000
  salary += attributes_hash["Field Grounder"]*1000
  salary += attributes_hash["Field Liner"]*1000
  salary += attributes_hash["Field Flyball"]*1000
  salary += attributes_hash["Field Popup"]*1000
  salary += attributes_hash["Throw Short"]*1000
  salary += attributes_hash["Throw Medium"]*1000
  salary += attributes_hash["Throw Long"]*1000
  salary += attributes_hash["Intelligence"]*2000
  salary += attributes_hash["Endurance"]*2000

  # Randomize salary a little bit
  salary *= rand(0.9..1.11)

  attributes_hash["Salary"] = salary
  attributes_hash
end
def generate_random_pitcher_attributes
  attributes_hash = {
    "First Name" => FFaker::Name.first_name_male,
    "Last Name" => Faker::Name.last_name,
    "Age" => rand(17..40),
    "Height" => rand(66..78),
    "Weight" => rand(160..300),
    "Power" => rand(1..100),
    "Contact" => rand(1..100),
    "Speed" => rand(1..100),
    "Patience" => rand(1..100),
    "Plate Vision" => rand(1..100),
    "Pull Amount" => rand(1..100),
    "Uppercut Amount" => rand(1..100),
    "Batting Average" => rand(1..100),
    "Movement" => rand(1..100),
    "Control" => rand(1..100),
    "Location" => rand(1..100),
    "Agility" => rand(1..100),
    "Reaction Time" => rand(1..100),
    "Arm Strength" => rand(1..100),
    "Field Grounder" => rand(1..100),
    "Field Liner" => rand(1..100),
    "Field Flyball" => rand(1..100),
    "Field Popup" => rand(1..100),
    "Throw Short" => rand(1..100),
    "Throw Medium" => rand(1..100),
    "Throw Long" => rand(1..100),
    "Intelligence" => rand(1..100),
    "Endurance" => rand(1..100)
  }

  # Calculate salary based on other attributes
  salary = 0
  salary += attributes_hash["Movement"]*10000
  salary += attributes_hash["Control"]*10000
  salary += attributes_hash["Location"]*10000
  salary += attributes_hash["Agility"]*1000
  salary += attributes_hash["Reaction Time"]*1000
  salary += attributes_hash["Arm Strength"]*10000
  salary += attributes_hash["Field Grounder"]*1000
  salary += attributes_hash["Field Liner"]*1000
  salary += attributes_hash["Field Popup"]*1000
  salary += attributes_hash["Throw Short"]*1000
  salary += attributes_hash["Intelligence"]*5000
  salary += attributes_hash["Endurance"]*8000

  # Randomize salary a little bit
  salary *= rand(0.9..1.11)

  attributes_hash["Salary"] = salary
  attributes_hash
end
def generate_average_pitcher_attributes
  attributes_hash = {
    "First Name" => FFaker::Name.first_name_male,
    "Last Name" => Faker::Name.last_name,
    "Age" => rand(17..40),
    "Height" => rand(66..78),
    "Weight" => rand(160..300),
    "Power" => 50,
    "Contact" => 50,
    "Speed" => 50,
    "Patience" => 50,
    "Plate Vision" => 50,
    "Pull Amount" => 50,
    "Uppercut Amount" => 50,
    "Batting Average" => 50,
    "Movement" => 50,
    "Control" => 50,
    "Location" => 50,
    "Agility" => 50,
    "Reaction Time" => 50,
    "Arm Strength" => 50,
    "Field Grounder" => 50,
    "Field Liner" => 50,
    "Field Flyball" => 50,
    "Field Popup" => 50,
    "Throw Short" => 50,
    "Throw Medium" => 50,
    "Throw Long" => 50,
    "Intelligence" => 50,
    "Endurance" => 50
  }

  # Calculate salary based on other attributes
  salary = 0
  salary += attributes_hash["Movement"]*10000
  salary += attributes_hash["Control"]*10000
  salary += attributes_hash["Location"]*10000
  salary += attributes_hash["Agility"]*1000
  salary += attributes_hash["Reaction Time"]*1000
  salary += attributes_hash["Arm Strength"]*10000
  salary += attributes_hash["Field Grounder"]*1000
  salary += attributes_hash["Field Liner"]*1000
  salary += attributes_hash["Field Popup"]*1000
  salary += attributes_hash["Throw Short"]*1000
  salary += attributes_hash["Intelligence"]*5000
  salary += attributes_hash["Endurance"]*8000

  # Randomize salary a little bit
  salary *= rand(0.9..1.11)

  attributes_hash["Salary"] = salary
  attributes_hash
end

def completely_random_player(team_id)

  attributes_hash = generate_random_player_attributes

  Player.create!(team_id: team_id,
                              first_name: attributes_hash["First Name"],
                              last_name: attributes_hash["Last Name"],
                              age: attributes_hash["Age"],
                              height: attributes_hash["Height"],
                              weight: attributes_hash["Weight"],
                              position: ['C','1B','2B','3B','SS','LF','CF','RF'].sample,
                              salary: attributes_hash["Salary"],
                              power: attributes_hash["Power"],
                              contact: attributes_hash["Contact"],
                              speed: attributes_hash["Speed"],
                              patience: attributes_hash["Patience"],
                              plate_vision: attributes_hash["Plate Vision"],
                              pull_amount: attributes_hash["Pull Amount"],
                              uppercut_amount: attributes_hash["Uppercut Amount"],
                              batting_average: attributes_hash["Batting Average"],
                              movement: attributes_hash["Movement"],
                              control: attributes_hash["Control"],
                              location: attributes_hash["Location"],
                              agility: attributes_hash["Agility"],
                              reactionTime: attributes_hash["Reaction Time"],
                              armStrength: attributes_hash["Arm Strength"],
                              fieldGrounder: attributes_hash["Field Grounder"],
                              fieldLiner: attributes_hash["Field Liner"],
                              fieldFlyball: attributes_hash["Field Flyball"],
                              fieldPopup: attributes_hash["Field Popup"],
                              throwShort: attributes_hash["Throw Short"],
                              throwMedium: attributes_hash["Throw Medium"],
                              throwLong: attributes_hash["Throw Long"],
                              intelligence: attributes_hash["Intelligence"],
                              endurance: attributes_hash["Endurance"],
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
                              pitch_1: "--",
                              pitch_2: "--",
                              pitch_3: "--",
                              pitch_4: "--",
                              pitch_5: "--",
                              wins: 0,
                              losses: 0)



end

def completely_average_player(team_id)

  attributes_hash = generate_average_player_attributes

  Player.create!(team_id: team_id,
                              first_name: attributes_hash["First Name"],
                              last_name: attributes_hash["Last Name"],
                              age: attributes_hash["Age"],
                              height: attributes_hash["Height"],
                              weight: attributes_hash["Weight"],
                              position: ['C','1B','2B','3B','SS','LF','CF','RF'].sample,
                              salary: attributes_hash["Salary"],
                              power: attributes_hash["Power"],
                              contact: attributes_hash["Contact"],
                              speed: attributes_hash["Speed"],
                              patience: attributes_hash["Patience"],
                              plate_vision: attributes_hash["Plate Vision"],
                              pull_amount: attributes_hash["Pull Amount"],
                              uppercut_amount: attributes_hash["Uppercut Amount"],
                              batting_average: attributes_hash["Batting Average"],
                              movement: attributes_hash["Movement"],
                              control: attributes_hash["Control"],
                              location: attributes_hash["Location"],
                              agility: attributes_hash["Agility"],
                              reactionTime: attributes_hash["Reaction Time"],
                              armStrength: attributes_hash["Arm Strength"],
                              fieldGrounder: attributes_hash["Field Grounder"],
                              fieldLiner: attributes_hash["Field Liner"],
                              fieldFlyball: attributes_hash["Field Flyball"],
                              fieldPopup: attributes_hash["Field Popup"],
                              throwShort: attributes_hash["Throw Short"],
                              throwMedium: attributes_hash["Throw Medium"],
                              throwLong: attributes_hash["Throw Long"],
                              intelligence: attributes_hash["Intelligence"],
                              endurance: attributes_hash["Endurance"],
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
                              pitch_1: "--",
                              pitch_2: "--",
                              pitch_3: "--",
                              pitch_4: "--",
                              pitch_5: "--",
                              wins: 0,
                              losses: 0)
end

def completely_random_pitcher(team_id)

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

  attributes_hash = generate_random_pitcher_attributes

  Player.create!(team_id: team_id,
                              first_name: attributes_hash["First Name"],
                              last_name: attributes_hash["Last Name"],
                              age: attributes_hash["Age"],
                              height: attributes_hash["Height"],
                              weight: attributes_hash["Weight"],
                              position: 'P',
                              salary: attributes_hash["Salary"],
                              power: attributes_hash["Power"],
                              contact: attributes_hash["Contact"],
                              speed: attributes_hash["Speed"],
                              patience: attributes_hash["Patience"],
                              plate_vision: attributes_hash["Plate Vision"],
                              pull_amount: attributes_hash["Pull Amount"],
                              uppercut_amount: attributes_hash["Uppercut Amount"],
                              batting_average: attributes_hash["Batting Average"],
                              movement: attributes_hash["Movement"],
                              control: attributes_hash["Control"],
                              location: attributes_hash["Location"],
                              agility: attributes_hash["Agility"],
                              reactionTime: attributes_hash["Reaction Time"],
                              armStrength: attributes_hash["Arm Strength"],
                              fieldGrounder: attributes_hash["Field Grounder"],
                              fieldLiner: attributes_hash["Field Liner"],
                              fieldFlyball: attributes_hash["Field Flyball"],
                              fieldPopup: attributes_hash["Field Popup"],
                              throwShort: attributes_hash["Throw Short"],
                              throwMedium: attributes_hash["Throw Medium"],
                              throwLong: attributes_hash["Throw Long"],
                              intelligence: attributes_hash["Intelligence"],
                              endurance: attributes_hash["Endurance"],
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
                              pitch_5: pitches[4],
                              wins: 0,
                              losses: 0 )



end

def completely_average_pitcher(team_id)

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

  attributes_hash = generate_average_pitcher_attributes

  Player.create!(team_id: team_id,
                              first_name: attributes_hash["First Name"],
                              last_name: attributes_hash["Last Name"],
                              age: attributes_hash["Age"],
                              height: attributes_hash["Height"],
                              weight: attributes_hash["Weight"],
                              position: 'P',
                              salary: attributes_hash["Salary"],
                              power: attributes_hash["Power"],
                              contact: attributes_hash["Contact"],
                              speed: attributes_hash["Speed"],
                              patience: attributes_hash["Patience"],
                              plate_vision: attributes_hash["Plate Vision"],
                              pull_amount: attributes_hash["Pull Amount"],
                              uppercut_amount: attributes_hash["Uppercut Amount"],
                              batting_average: attributes_hash["Batting Average"],
                              movement: attributes_hash["Movement"],
                              control: attributes_hash["Control"],
                              location: attributes_hash["Location"],
                              agility: attributes_hash["Agility"],
                              reactionTime: attributes_hash["Reaction Time"],
                              armStrength: attributes_hash["Arm Strength"],
                              fieldGrounder: attributes_hash["Field Grounder"],
                              fieldLiner: attributes_hash["Field Liner"],
                              fieldFlyball: attributes_hash["Field Flyball"],
                              fieldPopup: attributes_hash["Field Popup"],
                              throwShort: attributes_hash["Throw Short"],
                              throwMedium: attributes_hash["Throw Medium"],
                              throwLong: attributes_hash["Throw Long"],
                              intelligence: attributes_hash["Intelligence"],
                              endurance: attributes_hash["Endurance"],
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
                              pitch_5: pitches[4],
                              wins: 0,
                              losses: 0)
end

team_names = {
  "NL East city 0" => "Philadelphia",
  "NL East city 1" => "New York",
  "NL East city 2" => "Miami",
  "NL East city 3" => "Washington",
  "NL East city 4" => "Atlanta",

  "NL Central city 0" => "Cincinnati",
  "NL Central city 1" => "St. Louis",
  "NL Central city 2" => "Chicago",
  "NL Central city 3" => "Milwaukee",
  "NL Central city 4" => "Pittsburgh",

  "NL West city 0" => "Los Angeles",
  "NL West city 1" => "San Diego",
  "NL West city 2" => "Arizona",
  "NL West city 3" => "Colorado",
  "NL West city 4" => "San Francisco",

  "AL East city 0" => "New York",
  "AL East city 1" => "Boston",
  "AL East city 2" => "Tampa Bay",
  "AL East city 3" => "Baltimore",
  "AL East city 4" => "Toronto",

  "AL Central city 0" => "Cleveland",
  "AL Central city 1" => "Minnesota",
  "AL Central city 2" => "Detroit",
  "AL Central city 3" => "Chicago",
  "AL Central city 4" => "Kansas City",

  "AL West city 0" => "Anaheim",
  "AL West city 1" => "Oakland",
  "AL West city 2" => "Texas",
  "AL West city 3" => "Houston",
  "AL West city 4" => "Seattle",

  "NL East name 0" => "Phillies",
  "NL East name 1" => "Mets",
  "NL East name 2" => "Marlins",
  "NL East name 3" => "Nationals",
  "NL East name 4" => "Braves",

  "NL Central name 0" => "Reds",
  "NL Central name 1" => "Cardinals",
  "NL Central name 2" => "Cubs",
  "NL Central name 3" => "Brewers",
  "NL Central name 4" => "Pirates",

  "NL West name 0" => "Dodgers",
  "NL West name 1" => "Padres",
  "NL West name 2" => "Diamondbacks",
  "NL West name 3" => "Rockies",
  "NL West name 4" => "Giants",

  "AL East name 0" => "Yankees",
  "AL East name 1" => "Red Sox",
  "AL East name 2" => "Rays",
  "AL East name 3" => "Orioles",
  "AL East name 4" => "Blue Jays",

  "AL Central name 0" => "Indians",
  "AL Central name 1" => "Twins",
  "AL Central name 2" => "Tigers",
  "AL Central name 3" => "White Sox",
  "AL Central name 4" => "Royals",

  "AL West name 0" => "Angels",
  "AL West name 1" => "Athletics",
  "AL West name 2" => "Rangers",
  "AL West name 3" => "Astros",
  "AL West name 4" => "Mariners"
}


# Create season
season = Season.create!(next_game: 0, simulating: 1, current_date: Date.parse("1st April 2000"))

["NL", "AL"].each do |current_league|
  ["East", "Central", "West"].each do |current_division|
    # Create teams
    numTeams.times do |num|
      city = team_names["#{current_league} #{current_division} city #{num}"]
      name = team_names["#{current_league} #{current_division} name #{num}"]
      league = current_league
      division = current_division
      stadium = name + " " + ["Stadium","Field","Park","Coliseum","Center"].sample
      capacity = 45000
      newTeam = Team.create!(city: city,
      name: name,
      league: league,
      division: division,
      stadium: stadium,
      capacity: capacity,
      streak: 0,
      rotation_position: 1,
      user_id: -1)
      teams.unshift(newTeam)
    end

    # Create players for each team
    teams.each do |team|
      players = []
      numPlayersPerTeam.times do
        newPlayer = completely_random_player(team.id)
        players.unshift(newPlayer)
      end

      # players[12].update_attribute(:current_position, "C")
      # players[11].update_attribute(:current_position, "DH")
      # players[10].update_attribute(:current_position, "1B")
      # players[9].update_attribute(:current_position, "2B")
      # players[8].update_attribute(:current_position, "3B")
      # players[7].update_attribute(:current_position, "SS")
      # players[6].update_attribute(:current_position, "LF")
      # players[5].update_attribute(:current_position, "CF")
      # players[4].update_attribute(:current_position, "RF")
      # players[3].update_attribute(:current_position, "BN")
      # players[2].update_attribute(:current_position, "BN")
      # players[1].update_attribute(:current_position, "BN")
      # players[0].update_attribute(:current_position, "BN")
      #
      # players[12].update_attribute(:lineup_position, 1)
      # players[11].update_attribute(:lineup_position, 2)
      # players[10].update_attribute(:lineup_position, 3)
      # players[9].update_attribute(:lineup_position, 4)
      # players[8].update_attribute(:lineup_position, 5)
      # players[7].update_attribute(:lineup_position, 6)
      # players[6].update_attribute(:lineup_position, 7)
      # players[5].update_attribute(:lineup_position, 8)
      # players[4].update_attribute(:lineup_position, 9)
      # players[3].update_attribute(:lineup_position, -1)
      # players[2].update_attribute(:lineup_position, -1)
      # players[1].update_attribute(:lineup_position, -1)
      # players[0].update_attribute(:lineup_position, -1)

      players.each do |player|
        player.save
      end



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
      lineup1: "C",
      lineup2: "DH",
      lineup3: "1B",
      lineup4: "2B",
      lineup5: "3B",
      lineup6: "SS",
      lineup7: "LF",
      lineup8: "CF",
      lineup9: "RF",
      wins: 0,
      losses: 0,
      runs_scored: 0,
      runs_allowed: 0,
      schedule: "")
    end
    # Create pitchers for each team
    teams.each do |team|
      pitchers = []
      numPitchersPerTeam.times do
        newPitcher = completely_random_pitcher(team.id)
        pitchers.unshift(newPitcher)
      end
      team.update(
      sp1: pitchers[0].id,
      sp2: pitchers[1].id,
      sp3: pitchers[2].id,
      sp4: pitchers[3].id,
      sp5: pitchers[4].id,
      lr: pitchers[5].id,
      mr1: pitchers[6].id,
      mr2: pitchers[7].id,
      mr3: pitchers[8].id,
      su1: pitchers[9].id,
      su2: pitchers[10].id,
      cl: pitchers[11].id)
    end

    teams.clear

  end
end

# Reload the teams
@all_teams = Team.all

# Create the schedules

TOTAL_HOME_TWO_GAME_SERIES = 1
TOTAL_HOME_THREE_GAME_SERIES = 21
TOTAL_HOME_FOUR_GAME_SERIES = 4

TOTAL_AWAY_TWO_GAME_SERIES = 1
TOTAL_AWAY_THREE_GAME_SERIES = 21
TOTAL_AWAY_FOUR_GAME_SERIES = 4

TOTAL_HOMESTANDS = 7
TOTAL_ROAD_TRIPS = 8

TOTAL_DIVISION_SERIES = 24
TOTAL_INTERDIVISION_SERIES = 20
TOTAL_INTERLEAGUE_SERIES = 8

# one off day every 3 series

@current_date = Date.parse("1st April 2000")

@series = Hash.new 0

@series["TWO_GAME"] = 2
@series["THREE_GAME"] = 42
@series["FOUR_GAME"] = 8
@series["DIVISION"] = 24
@series["INTERDIVISION"] = 20
@series["INTERLEAGUE"] = 8

def create_series(series_index, num_games, series_type, remaining_team_ids, current_date)

  puts "remaining_team_ids: #{remaining_team_ids}"
  team_id = remaining_team_ids.sample
  remaining_team_ids.delete(team_id)
  team = Team.find(team_id)
  # CREATE NEW SERIES
  # Home or away?
  home = [true, false].sample
  # Find opponent
  opponent_id = remaining_team_ids.sample
  remaining_team_ids.delete(opponent_id)
  # @possible_opponents = nil
  # case series_type
  # when "DIVISION"
  #   @possible_opponents = Team.where("league = ? and division = ? and id != ?", team.league, team.division, team.id)
  # when "INTERDIVISION"
  #   @possible_opponents = Team.where("league = ? and id != ?", team.league, team.id)
  # when "INTERLEAGUE"
  #   @possible_opponents = Team.where("league != ?", team.league)
  # end



  home_id = home ? team_id : opponent_id
  away_id = home ? opponent_id : team_id

  # Now, create games
  num_games.times do |game_num|

    game_params = {:home_team_id => home_id, :away_team_id => away_id,
      :sim_date => current_date + game_num}

    game = Game.new(game_params)

    # save the game
    game.save
    puts "Series #{series_index}, game #{game_num}, will simulate on #{current_date + game_num} between team #{home_id} and team #{away_id}."
  end


end

52.times do |index|

  # Array of remaining team ids (so that there are no duplicate games)
  remaining_team_ids = []

  @all_teams.each do |team|
    remaining_team_ids.push(team.id)
  end

  # Next, how many games in the series
  num_games = 0
  rand = Random.new.rand(@series["TWO_GAME"] + @series["THREE_GAME"] + @series["FOUR_GAME"])
  if rand < @series["TWO_GAME"] # Two game series
    num_games = 2
    @series["TWO_GAME"] -= 1
  elsif rand < @series["TWO_GAME"] + @series["THREE_GAME"] # Three game series
    num_games = 3
    @series["THREE_GAME"] -= 1
  else # Four game series
    num_games = 4
    @series["FOUR_GAME"] -= 1
  end

  # Next, vs. division, interdivision, or interleague?
  series_type = ""
  rand = Random.new.rand(@series["DIVISION"] + @series["INTERDIVISION"] + @series["INTERLEAGUE"])
  if rand < @series["DIVISION"] # Division opponent
    series_type = "DIVISION"
    @series["DIVISION"] -= 1
  elsif rand < @series["DIVISION"] + @series["INTERDIVISION"] # Interdivision opponent
    series_type = "INTERDIVISION"
    @series["INTERDIVISION"] -= 1
  else # Interleague opponent
    series_type = "INTERLEAGUE"
    @series["INTERLEAGUE"] -= 1
  end

  count = 0
  while remaining_team_ids.length > 0
    count += 1
    puts "MATCHUP: #{count}"
    create_series(index, num_games, series_type, remaining_team_ids, @current_date)
  end

  @current_date += num_games

  # off day every 3 series
  if index % 3 == 0
    @current_date += 1
  end

end















# # Create the schedules
#
# # First, determine series lengths
# TOTAL_TWO_GAME_SERIES = 2
# TOTAL_THREE_GAME_SERIES = 38
# TOTAL_FOUR_GAME_SERIES = 11
#
# @two_game_series = 0
# @three_game_series = 0
# @four_game_series = 0
#
# def two_game_series_remaining
#     TOTAL_TWO_GAME_SERIES - @two_game_series
# end
#
# def three_game_series_remaining
#     TOTAL_THREE_GAME_SERIES - @three_game_series
# end
#
# def four_game_series_remaining
#     TOTAL_FOUR_GAME_SERIES - @four_game_series
# end
#
# # Array of series lengths (this will look like [4, 2, 3, 3, 2, 4, 3, etc...])
# @series_lengths = []
#
# def add_series
#     # determine length of new series
#     rand = Random.new.rand(two_game_series_remaining + three_game_series_remaining + four_game_series_remaining)
#     if rand < two_game_series_remaining
#         @series_lengths.push(2)
#         @two_game_series += 1
#     elsif rand < two_game_series_remaining + three_game_series_remaining
#         @series_lengths.push(3)
#         @three_game_series += 1
#     else
#         @series_lengths.push(4)
#         @four_game_series += 1
#     end
# end
#
# 51.times do
#     add_series
# end
#
# # @counts = Hash.new 0
#
# # @series_lengths.each do |series|
# #     @counts[series] += 1
# # end
#
# # puts @series_lengths
#
# # puts @counts
#
# # Next, determine matchups
# @all_teams = Team.all
#
# # array of team ids
# @teams = []
#
# @all_teams.each do |team|
#   @teams.push(team.id)
# end
#
# # This maps
# @season_matchups = Hash.new 0
#
# # loops over each series
# 51.times do |index|
#
#     @matchups = Hash.new 0
#
#     # start with all the teams in the array
#     @current_series_teams = Array.new(@teams)
#
#     # remove 2 teams and match them up
#     15.times do
#         home_team = @current_series_teams.delete(@current_series_teams.sample)
#         away_team = @current_series_teams.delete(@current_series_teams.sample)
#         @matchups[home_team] = away_team
#         @matchups[away_team] = home_team
#     end
#
#     # this now matches a series index (0 to 50) with a map of team ids to opponent ids
#     @season_matchups[index] = @matchups
#
# end
#
# # Now, create the schedules
# @team_schedules = Hash.new 0
#
# # 30 teams, each of which needs a schedule
# 30.times do |index|
#
#   # # Current date
#   # @current_date = Date.parse("1st April 2000")
#
#     schedule = []
#
#     # loop over each series
#     51.times do |j|
#
#         # loop over each game in the series
#         @series_lengths[j].times do
#
#           # # Create the game object to store in the database. This will be updated
#           # # with stats once the game is actually played.
#           # game_params = {:home_team_id => home_team, :away_team_id => away_team,
#           # :sim_date => @current_date}
#           #
#           # @game = Game.new(game_params)
#
#             # add the opponent's id to the schedule
#             schedule.push(@season_matchups[j][@teams[index]])
#         end
#     end
#
#     # Now, put this into a hash that maps team id with the schedule (an array of opponent ids)
#     @team_schedules[@teams[index]] = schedule
# end
#
# # @team_schedules is a hash where the key is the team id (here, 0 to 29) and the value is an array of opponent team ids (0 to 29)
# # puts @team_schedules
#
# # Now, update the schedule in the database (this will end up as a string of comma-separated values)
# @all_teams.each do |team|
#   team.update(
#   schedule: @team_schedules[team.id].to_s.chop[1..-1])
# end
