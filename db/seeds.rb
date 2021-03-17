# remember to destroy previous records to prevent duplicates
User.destroy_all
Show.destroy_all


cori = User.create(name:"Cori", age:27)
triston = User.create(name:"Triston", age:23)
adri = User.create(name:"Adri", age:21)
brian = User.create(name:"Brian", age:25)

greys_anatomy = Show.create(name:"Greys Anatomy",user_id: cori.id)
break_bad = Show.create(name:"Breaking Bad",user_id: brian.id)
snow = Show.create(name:"Snowfall",user_id: triston.id)
that_show = Show.create(name:"That 70s Show",user_id: cori.id)
modern = Show.create(name:"Modern Family", user_id: adri.id)

