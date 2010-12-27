call rails generate scaffold Composer name:string born_year:integer deceased_year:integer
call rails generate scaffold Tune title:string composer_id:integer
call rails generate scaffold TuneInCompilation compilation_id:integer --parent=Tune
call rails generate scaffold TuneInOriginal casette_id:integer --parent=Tune
call rails generate scaffold TuneCopy greenbinder_id:integer --parent=Tunerem rails generate scaffold Compilation title:string casette_id:integer
call rails generate scaffold GreenBinder title:string location_id:integer
call rails generate scaffold Casette label:string box_id:integer
call rails generate scaffold Box label:string location_id:integer
call rails generate scaffold Location street: string
call rails generate scaffold PrivateLocation owner:string --parent=Location
call rails generate scaffold Compilation title:string casette_id:integer