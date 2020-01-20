# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database (messages, users and then channels)'
Message.destroy_all
User.destroy_all
Channel.destroy_all

puts 'Creating channels...'

channels_attributes = [
  { name: 'general' },
  { name: 'react' },
  { name: 'dogs' }
]
Channel.create!(channels_attributes)

puts 'Creating users...'

users_attributes = [
  {
    email:         'lego@dog.com',
    password:      '123456',
    password_confirmation: '123456'
  },
  {
    email:         'hacker@email.com',
    password:      '123456',
    password_confirmation: '123456'
  },
  {
    email:         'chatty@email.com',
    password:      '123456',
    password_confirmation: '123456'
  }
]
User.create!(users_attributes)

puts 'Creating messages...'

messages_attributes = [
  {
    channel_id: 1,
    user_id: 1,
    content: "Hello! I'm new here!"
  },
  {
    channel_id: 1,
    user_id: 2,
    content: "Welcome!"
  },
  {
    channel_id: 1,
    user_id: 3,
    content: "Aww nice to meet you!"
  },
    {
    channel_id: 2,
    user_id: 1,
    content: "React is tough!"
  },
  {
    channel_id: 2,
    user_id: 2,
    content: "You just need more practice!"
  },
  {
    channel_id: 2,
    user_id: 3,
    content: "Redux is hard too!"
  },
    {
    channel_id: 3,
    user_id: 1,
    content: "I love dogs! Although cats are cool too."
  },
  {
    channel_id: 3,
    user_id: 2,
    content: "I like big dogs."
  },
  {
    channel_id: 3,
    user_id: 3,
    content: "I love pommies!"
  }
]
Message.create!(messages_attributes)

puts 'Finished!'
