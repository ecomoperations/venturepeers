# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Availability.create(:theavail => "Nights and Weekends")
Availability.create(:theavail => "Most of the Time")
Availability.create(:theavail => "Nights Only")
Availability.create(:theavail => "Weekends Only")

KnownLanguage.create(:thelang => "HTML") 
KnownLanguage.create(:thelang => "CSS") 
KnownLanguage.create(:thelang => "Adobe Suite(Graphic Design)") 
KnownLanguage.create(:thelang => "Ruby on Rails") 
KnownLanguage.create(:thelang => "Python") 
KnownLanguage.create(:thelang => "Javascript/Node.js") 
KnownLanguage.create(:thelang => "PHP") 
KnownLanguage.create(:thelang => "Wordpress") 

LearningLanguage.create(:thelearn => "HTML")
LearningLanguage.create(:thelearn => "CSS")
LearningLanguage.create(:thelearn => "Adobe Suite (Graphic Design)")
LearningLanguage.create(:thelearn => "Ruby on Rails")
LearningLanguage.create(:thelearn => "Python")
LearningLanguage.create(:thelearn => "Javascript/Node.js")
LearningLanguage.create(:thelearn => "PHP")
LearningLanguage.create(:thelearn => "Wordpress")

SiteInterest.create(:theinte => "Teaching") 
SiteInterest.create(:theinte => "Working on Projects") 
SiteInterest.create(:theinte => "Pair Programming") 