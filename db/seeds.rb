# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Availability.delete_all
KnownLanguage.delete_all
LearningLanguage.delete_all
SiteInterest.delete_all
TypeVenture.delete_all
LanguageNeed.delete_all
TypePayment.delete_all
MinimumSkill.delete_all
ResourceLanguage.delete_all
Level.delete_all

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
SiteInterest.create(:theinte => "Working on ventures") 
SiteInterest.create(:theinte => "Pair Programming") 

TypeVenture.create(:thetype => "Code Review/Teacher One-Time")
TypeVenture.create(:thetype => "Code Review/Teacher Ongoing")
TypeVenture.create(:thetype => "Open Source Idea")
TypeVenture.create(:thetype => "Job/Internship")

LanguageNeed.create(:theneed => "HTML")
LanguageNeed.create(:theneed => "CSS")
LanguageNeed.create(:theneed => "Adobe Suite (Graphic Design)")
LanguageNeed.create(:theneed => "Ruby on Rails")
LanguageNeed.create(:theneed => "Python")
LanguageNeed.create(:theneed => "Javascript/Node.js")
LanguageNeed.create(:theneed => "PHP")
LanguageNeed.create(:theneed => "WordPress")

TypePayment.create(:thepay => "No Pay")
TypePayment.create(:thepay => "Paid!")
TypePayment.create(:thepay => "Paid on Acceptance")

MinimumSkill.create(:themin => "Hello, World")
MinimumSkill.create(:themin => "Noob")
MinimumSkill.create(:themin => "Lorem Ipsum")
MinimumSkill.create(:themin => "Deploy")
MinimumSkill.create(:themin => "Contribute")
MinimumSkill.create(:themin => "Scale")

ResourceLanguage.create(:thetut => "HTML and CSS")
ResourceLanguage.create(:thetut => "Ruby on Rails")
ResourceLanguage.create(:thetut => "Adobe Suite(Graphic Design)")
ResourceLanguage.create(:thetut => "Python")
ResourceLanguage.create(:thetut => "JavaScript")
ResourceLanguage.create(:thetut => "PHP")

Level.create(:thelev => "Hello, World")
Level.create(:thelev => "Noob")
Level.create(:thelev => "Lorem Ipsum")
Level.create(:thelev => "Deploy")
Level.create(:thelev => "Contribute")
Level.create(:thelev => "Scale")


