# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(user_id: 'B20123CS', name: 'Amritha H Prabhu', department: 'CS', phone_number: '9037123456', password: '4321', role: 'Student')
User.create(user_id: 'B20189BT', name: 'Arathi K', department: 'Biotech', phone_number: '1234567893', password: '1234', role: 'Student')
User.create(user_id: 'B20234EC', name: 'Jackson Stephan', department: 'ECE', phone_number: '1234567895', password: '1234', role: 'Student')
User.create(user_id: 'B20456CS', name: 'Rhuthuvarna S P', department: 'CS', phone_number: '1234578901', password: '1234', role: 'Student')
User.create(user_id: 'B20501CS', name: 'Mukesh Rai', department: 'CS', phone_number: '1234578906', password: '1234', role: 'Student')
User.create(user_id: 'B20556EC', name: 'Lakshmi Menon', department: 'ECE', phone_number: '1234578911', password: '1234', role: 'Student')
User.create(user_id: 'B20601CS', name: 'Anirudh Joshi', department: 'CS', phone_number: '1234578916', password: '1234', role: 'Student')
User.create(user_id: 'B20656EC', name: 'Priyanka Varma', department: 'ECE', phone_number: '1234578921', password: '1234', role: 'Student')
User.create(user_id: 'B21145CH', name: 'Tejaswini R', department: 'CHEM', phone_number: '1234567891', password: '1234', role: 'Student')
User.create(user_id: 'B21256CS', name: 'G Gautham Krishna', department: 'CS', phone_number: '1234567896', password: '1234', role: 'Student')
User.create(user_id: 'B21321ME', name: 'Vaisakh Ramachandran', department: 'MECH', phone_number: '1234567894', password: '1234', role: 'Student')
User.create(user_id: 'B21389BT', name: 'Rakshith Rao', department: 'Biotech', phone_number: '1234567899', password: '1234', role: 'Student')
User.create(user_id: 'B21512CH', name: 'Pooja Sharma', department: 'CHEM', phone_number: '1234578907', password: '1234', role: 'Student')
User.create(user_id: 'B21567CE', name: 'V G Vaishali', department: 'CIVIL', phone_number: '1234578902', password: '1234', role: 'Student')
User.create(user_id: 'B21567CS', name: 'Aditya Kumar', department: 'CS', phone_number: '1234578912', password: '1234', role: 'Student')
User.create(user_id: 'B21612CE', name: 'Ritika Agarwal', department: 'CIVIL', phone_number: '1234578917', password: '1234', role: 'Student')
User.create(user_id: 'B21667CS', name: 'Rahul Menon', department: 'CS', phone_number: '1234578922', password: '1234', role: 'Student')
User.create(user_id: 'B22167EE', name: 'Hotha Durga Swetha', department: 'EEE', phone_number: '1234567892', password: '1234', role: 'Student')
User.create(user_id: 'B22345CE', name: 'Sreeranjini S', department: 'CIVIL', phone_number: '1234567897', password: '1234', role: 'Student')
User.create(user_id: 'B22523EE', name: 'Rohan Nair', department: 'EEE', phone_number: '1234578908', password: '1234', role: 'Student')
User.create(user_id: 'B22578CH', name: 'Meera Singh', department: 'CHEM', phone_number: '1234578913', password: '1234', role: 'Student')
User.create(user_id: 'B22623EE', name: 'Karan Malhotra', department: 'EEE', phone_number: '1234578918', password: '1234', role: 'Student')
User.create(user_id: 'B22678CE', name: 'Swetha Naidu', department: 'CIVIL', phone_number: '1234578923', password: '1234', role: 'Student')
User.create(user_id: 'B22678EE', name: 'Aaron Joseph', department: 'EEE', phone_number: '1234578903', password: '1234', role: 'Student')
User.create(user_id: 'B23367EE', name: 'Vandkadoth Gayathri', department: 'EEE', phone_number: '1234567898', password: '1234', role: 'Student')
User.create(user_id: 'B23534BT', name: 'Sneha Iyer', department: 'Biotech', phone_number: '1234578909', password: '1234', role: 'Student')
User.create(user_id: 'B23589EE', name: 'Nikhil Patil', department: 'EEE', phone_number: '1234578914', password: '1234', role: 'Student')
User.create(user_id: 'B23634BT', name: 'Ananya Chatterjee', department: 'Biotech', phone_number: '1234578919', password: '1234', role: 'Student')
User.create(user_id: 'B23689EE', name: 'Jatin Sareen', department: 'EEE', phone_number: '1234578924', password: '1234', role: 'Student')
User.create(user_id: 'B23789BT', name: 'Sidharth Deepesh', department: 'Biotech', phone_number: '1234578904', password: '1234', role: 'Student')
User.create(user_id: 'B24545ME', name: 'Vishal Gupta', department: 'MECH', phone_number: '1234578910', password: '1234', role: 'Student')
User.create(user_id: 'B24590BT', name: 'Kavya Reddy', department: 'Biotech', phone_number: '1234578915', password: '1234', role: 'Student')
User.create(user_id: 'B24645ME', name: 'Bhavesh Patel', department: 'MECH', phone_number: '1234578920', password: '1234', role: 'Student')
User.create(user_id: 'B24690BT', name: 'Divya Paul', department: 'Biotech', phone_number: '1234578925', password: '1234', role: 'Student')
User.create(user_id: 'B24890ME', name: 'Natasha Das', department: 'MECH', phone_number: '1234578905', password: '1234', role: 'Student')
User.create(user_id: 'T1BT', name: 'Rekha Suresh', department: 'Biotech', phone_number: '9876512345', password: '1234', role: 'Faculty')
User.create(user_id: 'T1CE', name: 'Poonam Bhatt', department: 'CHEM', phone_number: '9876512343', password: '1234', role: 'Faculty')
User.create(user_id: 'T1CS', name: 'Rohit Sharma', department: 'CS', phone_number: '9876512342', password: '1234', role: 'Faculty')
User.create(user_id: 'T1EC', name: 'Anjali Krishnan', department: 'ECE', phone_number: '9876512341', password: '1234', role: 'Faculty')
User.create(user_id: 'T1EE', name: 'Kishore Kumar', department: 'EEE', phone_number: '9876512344', password: '1234', role: 'Faculty')
User.create(user_id: 'T1ME', name: 'Sanjay Verma', department: 'MECH', phone_number: '9876512340', password: '1234', role: 'Faculty')
User.create(user_id: 'T2BT', name: 'Brijesh Kumar', department: 'Biotech', phone_number: '9876512351', password: '1234', role: 'Faculty')
User.create(user_id: 'T2CE', name: 'Kiran Kulkarni', department: 'CHEM', phone_number: '9876512349', password: '1234', role: 'Faculty')
User.create(user_id: 'T2CS', name: 'Krishna Reddy', department: 'CS', phone_number: '9876512348', password: '1234', role: 'Faculty')
User.create(user_id: 'T2EC', name: 'Rajni Gupta', department: 'ECE', phone_number: '9876512347', password: '1234', role: 'Faculty')
User.create(user_id: 'T2EE', name: 'Lalita Rao', department: 'EEE', phone_number: '9876512350', password: '1234', role: 'Faculty')
User.create(user_id: 'T2ME', name: 'Mohanlal Joshi', department: 'MECH', phone_number: '9876512346', password: '1234', role: 'Faculty')
User.create(user_id: 'T3BT', name: 'Shreya Ghoshal', department: 'Biotech', phone_number: '9876523455', password: '1234', role: 'Faculty')
User.create(user_id: 'T3CE', name: 'Nandini Patel', department: 'CHEM', phone_number: '9876523453', password: '1234', role: 'Faculty')
User.create(user_id: 'T3CS', name: 'Bhuvanesh Dubey', department: 'CS', phone_number: '9876523452', password: '1234', role: 'Faculty')
User.create(user_id: 'T3EC', name: 'Radhika Desai', department: 'ECE', phone_number: '9876523451', password: '1234', role: 'Faculty')
User.create(user_id: 'T3EE', name: 'Karan Oberoi', department: 'EEE', phone_number: '9876523454', password: '1234', role: 'Faculty')
User.create(user_id: 'T3ME', name: 'Vijay Prakash', department: 'MECH', phone_number: '9876523450', password: '1234', role: 'Faculty')
User.create(user_id: 'T4BT', name: 'Shefali Alvaris', department: 'Biotech', phone_number: '9876523461', password: '1234', role: 'Faculty')
User.create(user_id: 'T4CE', name: 'Rima Sen', department: 'CHEM', phone_number: '9876523459', password: '1234', role: 'Faculty')
User.create(user_id: 'T4CS', name: 'Sushant Singh', department: 'CS', phone_number: '9876523458', password: '1234', role: 'Faculty')
User.create(user_id: 'T4EC', name: 'Geeta Kapoor', department: 'ECE', phone_number: '9876523457', password: '1234', role: 'Faculty')
User.create(user_id: 'T4EE', name: 'Vinod Kumar', department: 'EEE', phone_number: '9876523460', password: '1234', role: 'Faculty')
User.create(user_id: 'T4ME', name: 'Lalit Mohan', department: 'MECH', phone_number: '9876523456', password: '1234', role: 'Faculty')

classroom_data = [
  ['R100', 'ELHC', '101', 1],
  ['R101', 'ELHC', '102', 0],
  ['R102', 'ELHC', '103', 1],
  ['R103', 'ELHC', '104', 1],
  ['R104', 'ELHC', '201', 1],
  ['R105', 'ELHC', '202', 0],
  ['R106', 'ELHC', '203', 0],
  ['R107', 'ELHC', '204', 1],
  ['R108', 'ELHC', '301', 1],
  ['R109', 'ELHC', '302', 1],
  ['R110', 'ELHC', '303', 0],
  ['R111', 'ELHC', '304', 1],
  ['R112', 'ELHC', '401', 0],
  ['R113', 'ELHC', '402', 1],
  ['R114', 'ELHC', '403', 1],
  ['R115', 'ELHC', '404', 1],
  ['R116', 'NLHC', '101', 1],
  ['R117', 'NLHC', '102', 1],
  ['R118', 'NLHC', '103', 0],
  ['R119', 'NLHC', '104', 1],
  ['R120', 'NLHC', '201', 1],
  ['R121', 'NLHC', '202', 1],
  ['R122', 'NLHC', '203', 0],
  ['R123', 'NLHC', '204', 1],
  ['R124', 'NLHC', '301', 1],
  ['R125', 'NLHC', '302', 1],
  ['R126', 'NLHC', '303', 0],
  ['R127', 'NLHC', '304', 1],
  ['R128', 'NLHC', '401', 0],
  ['R129', 'NLHC', '402', 1],
  ['R130', 'NLHC', '403', 1],
  ['R131', 'NLHC', '404', 1],
  ['R132', 'MB', '101', 1],
  ['R133', 'MB', '201', 1],
  ['R134', 'MB', '301', 1]
]

classroom_data.each do |entry|
  Classroom.create(
    room_id: entry[0],
    building: entry[1],
    room_no: entry[2],
    is_available: entry[3]

  )
end
key_assignment_data = [
  ['2023-10-21', '09:00:00', 'B21256CS', 'R106', 1, 0],
  ['2023-10-22', '08:00:00', 'B20456CS', 'R107', 1, 1],
  ['2023-10-23', '11:00:00', 'B20501CS', 'R112', 1, 0],
  ['2023-10-24', '09:00:00', 'B22345CE', 'R126', 1, 1],
  ['2023-10-25', '10:00:00', 'B23367EE', 'R109', 1, 0],
  ['2024-02-12', '14:02:00', 'B20189BT', 'R101', 0, 0],
  ['2024-01-01', '13:00:00', 'B20501CS', 'R105', 1, 0]
]

key_assignment_data.each do |entry|
  KeyAssignment.create(
    date: entry[0],
    taking_time: entry[1],
    user_id: entry[2],
    room_id: entry[3],
    box_key: entry[4],
    is_returned: entry[5]
  )
end
