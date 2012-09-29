# coding: utf-8 

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
if !User.exists?(email: Setting::User.zhangcaiyan.email )
  user=User.create(Setting::User.zhangcaiyan)
  User.confirm_by_token(user.confirmation_token)
  puts "填充zhangcaiyanbeyond账户数据"
end
