## Laravel Real Estate Search Rental House


## Aboout this project
Database:
housing/database/mysql/housing.sql; 

this project front end initially created with Angular 7, but deprecated and changed back to laravel blade.

mainly consist of Model,View,Controller (MVC).

Model & Table shared same attribute since both indicates object related to real world

Model/Table :-
1) houses // list of house record
2) states // list of state 
3) system_parameter 
4) parameter
//Not Used since the relationship not working (last time when i did for laravel 5.4/5.5 its work)
5) agents 
6) cities 

this project used only HomeController and have these function:-
1) index(), load in initial state
2) search(), trigger when user search/filter 
3) getParameter(), features to derive filter listing option in `parameter`(table) based on `name` on `system_parameter`(table) 

View only consist one blade
1) welcome.blade.php ( since structuring directory will be time consuming, i didn't structure properly)

Used only in:
Form: Line 102 - 149
House Listing: Line 151 - 200


To Create another Filtering Option,
1) you may create another table if the attribute is not support by system_paramter/paramter optionlisting or 
2) you can just add in a new record in `system_parameter` and insert listing in `parameter`, and the id number would be used in as fk column in the `houses` table 


## Official Documentation

Documentation for the framework can be found on the [Laravel website](http://laravel.com/docs).

