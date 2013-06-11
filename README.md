# CarveNiche Example App

This repo contains a simple rails app that has one model called Marksheet. I then assumed two resources grades (1st, 2nd so on) which has a marksheet that contains student name, the grade and the total marks. I assumed that this was all to be stored under one single model. 

Please see the `db/seeds.rb` the way I have populated the database. I initially tried the `accepts_nested_attributes_for` and figured that it cannot be done with one single model. And hence I used the resources approach and manually used the `form_tag` and the `fields_for` helper. Also I assumed only one validation for ensuring numericality although others can be added.
