# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
#
puts 'starting seed'
puts 'deleting existing data'

Film.destroy_all
Planet.destroy_all
Person.destroy_all

puts 'inserting new data'

film_1 = Film.create(
  title: 'A New Hope',
  episode_id: 4,
  director: 'George Lucas',
  producer: 'Gary Kurtz, Rick McCallum',
  release_date: '1977-05-25',
  opening_crawl: 'It is a period of civil war.
  Rebel spaceships, striking
  from a hidden base, have won
  their first victory against
  the evil Galactic Empire.

  During the battle, Rebel
  spies managed to steal secret
  plans to the Empire''s
  ultimate weapon, the DEATH
  STAR, an armored space
  station with enough power
  to destroy an entire planet.

  Pursued by the Empire''s
  sinister agents, Princess
  Leia races home aboard her
  starship, custodian of the
  stolen plans that can save her
  people and restore
  freedom to the galaxy....'
)

film_2 = Film.create(
  title: 'The Empire Strikes Back',
  episode_id: 5,
  director: 'Irvin Kershner',
  producer: 'Gary Kurtz, Rick McCallum',
  release_date: '1980-05-17',
  opening_crawl: 'It is a dark time for the
  Rebellion. Although the Death
  Star has been destroyed,
  Imperial troops have driven the
  Rebel forces from their hidden
  base and pursued them across
  the galaxy.

  Evading the dreaded Imperial
  Starfleet, a group of freedom
  fighters led by Luke Skywalker
  has established a new secret
  base on the remote ice world
  of Hoth.

  The evil lord Darth Vader,
  obsessed with finding young
  Skywalker, has dispatched
  thousands of remote probes into
  the far reaches of space....'
)

film_3 = Film.create(
  title: 'Return of the Jedi',
  episode_id: 6,
  director: 'Richard Marquand',
  producer: 'Howard G. Kazanjian, George Lucas, Rick McCallum',
  release_date: '1983-05-25',
  opening_crawl: 'Luke Skywalker has returned to
  his home planet of Tatooine in
  an attempt to rescue his
  friend Han Solo from the
  clutches of the vile gangster
  Jabba the Hutt.

  Little does Luke know that the
  GALACTIC EMPIRE has secretly
  begun construction on a new
  armored space station even
  more powerful than the first
  dreaded Death Star.

  When completed, this ultimate
  weapon will spell certain doom
  for the small band of rebels
  struggling to restore freedom
  to the galaxy...'
)

film_4 = Film.create(
  title: 'The Phantom Menace',
  episode_id: 1,
  director: 'George Lucas',
  producer: 'Rick McCallum',
  release_date: '1999-05-19',
  opening_crawl: 'Turmoil has engulfed the
  Galactic Republic. The taxation
  of trade routes to outlying star
  systems is in dispute.

  Hoping to resolve the matter
  with a blockade of deadly
  battleships, the greedy Trade
  Federation has stopped all
  shipping to the small planet
  of Naboo.

  While the Congress of the
  Republic endlessly debates
  this alarming chain of events,
  the Supreme Chancellor has
  secretly dispatched two Jedi
  Knights, the guardians of
  peace and justice in the
  galaxy, to settle the conflict....'
)

film_5 = Film.create(
  title: 'Attack of the Clones',
  episode_id: 2,
  director: 'George Lucas',
  producer: 'Rick McCallum',
  release_date: '2002-05-16',
  opening_crawl: 'There is unrest in the Galactic
  Senate. Several thousand solar
  systems have declared their
  intentions to leave the Republic.

  This separatist movement,
  under the leadership of the
  mysterious Count Dooku, has
  made it difficult for the limited
  number of Jedi Knights to maintain
  peace and order in the galaxy.

  Senator Amidala, the former
  Queen of Naboo, is returning
  to the Galactic Senate to vote
  on the critical issue of creating
  an ARMY OF THE REPUBLIC
  to assist the overwhelmed
  Jedi....'
)

film_6 = Film.create(
  title: 'Revenge of the Sith',
  episode_id: 3,
  director: 'George Lucas',
  producer: 'Rick McCallum',
  release_date: '2005-05-19',
  opening_crawl: 'War! The Republic is crumbling
  under attacks by the ruthless
  Sith Lord, Count Dooku.
  There are heroes on both sides.
  Evil is everywhere.

  In a stunning move, the
  fiendish droid leader, General
  Grievous, has swept into the
  Republic capital and kidnapped
  Chancellor Palpatine, leader of
  the Galactic Senate.

  As the Separatist Droid Army
  attempts to flee the besieged
  capital with their valuable
  hostage, two Jedi Knights lead a
  desperate mission to rescue the
  captive Chancellor....'
)

planet_1 = Planet.create(name: "Tatooine"       , rotation_period: "23"            , orbital_period: "304"          , diameter: "10465"   , climate: "arid"                      , gravity: "1 standard"                             , terrain: "desert"                                   , surface_water: "1"           , population: "200000"       )
planet_2 = Planet.create(name: "Alderaan"       , rotation_period: "24"            , orbital_period: "364"          , diameter: "12500"   , climate: "temperate"                 , gravity: "1 standard"                             , terrain: "grasslands, mountains"                    , surface_water: "40"          , population: "2000000000"   )
planet_3 = Planet.create(name: "Yavin IV"       , rotation_period: "24"            , orbital_period: "4818"         , diameter: "10200"   , climate: "temperate, tropical"       , gravity: "1 standard"                             , terrain: "jungle, rainforests"                      , surface_water: "8"           , population: "1000"         )
planet_4 = Planet.create(name: "Hoth"           , rotation_period: "23"            , orbital_period: "549"          , diameter: "7200"    , climate: "frozen"                    , gravity: "1.1 standard"                           , terrain: "tundra, ice caves, mountain ranges"       , surface_water: "100"         , population: "unknown"      )
planet_5 = Planet.create(name: "Dagobah"        , rotation_period: "23"            , orbital_period: "341"          , diameter: "8900"    , climate: "murky"                     , gravity: "N/A"                                    , terrain: "swamp, jungles"                           , surface_water: "8"           , population: "unknown"      )
planet_6 = Planet.create(name: "Bespin"         , rotation_period: "12"            , orbital_period: "5110"         , diameter: "118000"  , climate: "temperate"                 , gravity: "1.5 (surface), 1 standard (Cloud City)" , terrain: "gas giant"                                , surface_water: "0"           , population: "6000000"      )
planet_7 = Planet.create(name: "Endor"          , rotation_period: "18"            , orbital_period: "402"          , diameter: "4900"    , climate: "temperate"                 , gravity: "0.85 standard"                          , terrain: "forests, mountains, lakes"                , surface_water: "8"           , population: "30000000"     )
planet_8 = Planet.create(name: "Naboo"          , rotation_period: "26"            , orbital_period: "312"          , diameter: "12120"   , climate: "temperate"                 , gravity: "1 standard"                             , terrain: "grassy hills, swamps, forests, mountains" , surface_water: "12"          , population: "4500000000"   )
planet_9 = Planet.create(name: "Coruscant"      , rotation_period: "24"            , orbital_period: "368"          , diameter: "12240"   , climate: "temperate"                 , gravity: "1 standard"                             , terrain: "cityscape, mountains"                     , surface_water: "unknown"     , population: "1000000000000")
planet_10 = Planet.create(name: "Kamino"         , rotation_period: "27"            , orbital_period: "463"          , diameter: "19720"   , climate: "temperate"                 , gravity: "1 standard"                             , terrain: "ocean"                                    , surface_water: "100"         , population: "1000000000"   )
planet_11 = Planet.create(name: "Geonosis"       , rotation_period: "30"            , orbital_period: "256"          , diameter: "11370"   , climate: "temperate, arid"           , gravity: "0.9 standard"                           , terrain: "rock, desert, mountain, barren"           , surface_water: "5"           , population: "100000000000" )
planet_12 = Planet.create(name: "Utapau"         , rotation_period: "27"            , orbital_period: "351"          , diameter: "12900"   , climate: "temperate, arid, windy"    , gravity: "1 standard"                             , terrain: "scrublands, savanna, canyons, sinkholes"  , surface_water: "0.9"         , population: "95000000"     )
planet_13 = Planet.create(name: "Mustafar"       , rotation_period: "36"            , orbital_period: "412"          , diameter: "4200"    , climate: "hot"                       , gravity: "1 standard"                             , terrain: "volcanoes, lava rivers, mountains, caves" , surface_water: "0"           , population: "20000"        )
planet_14 = Planet.create(name: "Kashyyyk"       , rotation_period: "26"            , orbital_period: "381"          , diameter: "12765"   , climate: "tropical"                  , gravity: "1 standard"                             , terrain: "jungle, forests, lakes, rivers"           , surface_water: "60"          , population: "45000000"     )
planet_15 = Planet.create(name: "Polis Massa"    , rotation_period: "24"            , orbital_period: "590"          , diameter: "0"       , climate: "artificial temperate"      , gravity: "0.56 standard"                          , terrain: "airless asteroid"                         , surface_water: "0"           , population: "1000000"      )
planet_16 = Planet.create(name: "Mygeeto"        , rotation_period: "12"            , orbital_period: "167"          , diameter: "10088"   , climate: "frigid"                    , gravity: "1 standard"                             , terrain: "glaciers, mountains, ice canyons"         , surface_water: "unknown"     , population: "19000000"     )
planet_17 = Planet.create(name: "Felucia"        , rotation_period: "34"            , orbital_period: "231"          , diameter: "9100"    , climate: "hot, humid"                , gravity: "0.75 standard"                          , terrain: "fungus forests"                           , surface_water: "unknown"     , population: "8500000"      )
planet_18 = Planet.create(name: "Cato Neimoidia" , rotation_period: "25"            , orbital_period: "278"          , diameter: "0"       , climate: "temperate, moist"          , gravity: "1 standard"                             , terrain: "mountains, fields, forests, rock arches"  , surface_water: "unknown"     , population: "10000000"     )
planet_19 = Planet.create(name: "Saleucami"      , rotation_period: "26"            , orbital_period: "392"          , diameter: "14920"   , climate: "hot"                       , gravity: "unknown"                                , terrain: "caves, desert, mountains, volcanoes"      , surface_water: "unknown"     , population: "1400000000"   )
planet_20 = Planet.create(name: "Stewjon"        , rotation_period: "unknown"       , orbital_period: "unknown"      , diameter: "0"       , climate: "temperate"                 , gravity: "1 standard"                             , terrain: "grass"                                    , surface_water: "unknown"     , population: "unknown"      )
planet_21 = Planet.create(name: "Eriadu"         , rotation_period: "24"            , orbital_period: "360"          , diameter: "13490"   , climate: "polluted"                  , gravity: "1 standard"                             , terrain: "cityscape"                                , surface_water: "unknown"     , population: "22000000000"  )
planet_22 = Planet.create(name: "Corellia"       , rotation_period: "25"            , orbital_period: "329"          , diameter: "11000"   , climate: "temperate"                 , gravity: "1 standard"                             , terrain: "plains, urban, hills, forests"            , surface_water: "70"          , population: "3000000000"   )
planet_23 = Planet.create(name: "Rodia"          , rotation_period: "29"            , orbital_period: "305"          , diameter: "7549"    , climate: "hot"                       , gravity: "1 standard"                             , terrain: "jungles, oceans, urban, swamps"           , surface_water: "60"          , population: "1300000000"   )
planet_24 = Planet.create(name: "Nal Hutta"      , rotation_period: "87"            , orbital_period: "413"          , diameter: "12150"   , climate: "temperate"                 , gravity: "1 standard"                             , terrain: "urban, oceans, swamps, bogs"              , surface_water: "unknown"     , population: "7000000000"   )
planet_25 = Planet.create(name: "Dantooine"      , rotation_period: "25"            , orbital_period: "378"          , diameter: "9830"    , climate: "temperate"                 , gravity: "1 standard"                             , terrain: "oceans, savannas, mountains, grasslands"  , surface_water: "unknown"     , population: "1000"         )
planet_26 = Planet.create(name: "Bestine IV"     , rotation_period: "26"            , orbital_period: "680"          , diameter: "6400"    , climate: "temperate"                 , gravity: "unknown"                                , terrain: "rocky islands, oceans"                    , surface_water: "98"          , population: "62000000"     )
planet_27 = Planet.create(name: "Ord Mantell"    , rotation_period: "26"            , orbital_period: "334"          , diameter: "14050"   , climate: "temperate"                 , gravity: "1 standard"                             , terrain: "plains, seas, mesas"                      , surface_water: "10"          , population: "4000000000"   )
planet_28 = Planet.create(name: "unknown"        , rotation_period: "0"             , orbital_period: "0"            , diameter: "0"       , climate: "unknown"                   , gravity: "unknown"                                , terrain: "unknown"                                  , surface_water: "unknown"     , population: "unknown"      )
planet_29 = Planet.create(name: "Trandosha"      , rotation_period: "25"            , orbital_period: "371"          , diameter: "0"       , climate: "arid"                      , gravity: "0.62 standard"                          , terrain: "mountains, seas, grasslands, deserts"     , surface_water: "unknown"     , population: "42000000"     )
planet_30 = Planet.create(name: "Socorro"        , rotation_period: "20"            , orbital_period: "326"          , diameter: "0"       , climate: "arid"                      , gravity: "1 standard"                             , terrain: "deserts, mountains"                       , surface_water: "unknown"     , population: "300000000"    )
planet_31 = Planet.create(name: "Mon Cala"       , rotation_period: "21"            , orbital_period: "398"          , diameter: "11030"   , climate: "temperate"                 , gravity: "1"                                      , terrain: "oceans, reefs, islands"                   , surface_water: "100"         , population: "27000000000"  )
planet_32 = Planet.create(name: "Chandrila"      , rotation_period: "20"            , orbital_period: "368"          , diameter: "13500"   , climate: "temperate"                 , gravity: "1"                                      , terrain: "plains, forests"                          , surface_water: "40"          , population: "1200000000"   )
planet_33 = Planet.create(name: "Sullust"        , rotation_period: "20"            , orbital_period: "263"          , diameter: "12780"   , climate: "superheated"               , gravity: "1"                                      , terrain: "mountains, volcanoes, rocky deserts"      , surface_water: "5"           , population: "18500000000"  )
planet_34 = Planet.create(name: "Toydaria"       , rotation_period: "21"            , orbital_period: "184"          , diameter: "7900"    , climate: "temperate"                 , gravity: "1"                                      , terrain: "swamps, lakes"                            , surface_water: "unknown"     , population: "11000000"     )
planet_35 = Planet.create(name: "Malastare"      , rotation_period: "26"            , orbital_period: "201"          , diameter: "18880"   , climate: "arid, temperate, tropical" , gravity: "1.56"                                   , terrain: "swamps, deserts, jungles, mountains"      , surface_water: "unknown"     , population: "2000000000"   )
planet_36 = Planet.create(name: "Dathomir"       , rotation_period: "24"            , orbital_period: "491"          , diameter: "10480"   , climate: "temperate"                 , gravity: "0.9"                                    , terrain: "forests, deserts, savannas"               , surface_water: "unknown"     , population: "5200"         )
planet_37 = Planet.create(name: "Ryloth"         , rotation_period: "30"            , orbital_period: "305"          , diameter: "10600"   , climate: "temperate, arid, subartic" , gravity: "1"                                      , terrain: "mountains, valleys, deserts, tundra"      , surface_water: "5"           , population: "1500000000"   )
planet_38 = Planet.create(name: "Aleen Minor"    , rotation_period: "unknown"       , orbital_period: "unknown"      , diameter: "unknown" , climate: "unknown"                   , gravity: "unknown"                                , terrain: "unknown"                                  , surface_water: "unknown"     , population: "unknown"      )
planet_39 = Planet.create(name: "Vulpter"        , rotation_period: "22"            , orbital_period: "391"          , diameter: "14900"   , climate: "temperate, artic"          , gravity: "1"                                      , terrain: "urban, barren"                            , surface_water: "unknown"     , population: "421000000"    )
planet_40 = Planet.create(name: "Troiken"        , rotation_period: "unknown"       , orbital_period: "unknown"      , diameter: "unknown" , climate: "unknown"                   , gravity: "unknown"                                , terrain: "desert, tundra, rainforests, mountains"   , surface_water: "unknown"     , population: "unknown"      )
planet_41 = Planet.create(name: "Tund"           , rotation_period: "48"            , orbital_period: "1770"         , diameter: "12190"   , climate: "unknown"                   , gravity: "unknown"                                , terrain: "barren, ash"                              , surface_water: "unknown"     , population: "0"            )
planet_42 = Planet.create(name: "Haruun Kal"     , rotation_period: "25"            , orbital_period: "383"          , diameter: "10120"   , climate: "temperate"                 , gravity: "0.98"                                   , terrain: "toxic cloudsea, plateaus, volcanoes"      , surface_water: "unknown"     , population: "705300"       )
planet_43 = Planet.create(name: "Cerea"          , rotation_period: "27"            , orbital_period: "386"          , diameter: "unknown" , climate: "temperate"                 , gravity: "1"                                      , terrain: "verdant"                                  , surface_water: "20"          , population: "450000000"    )
planet_44 = Planet.create(name: "Glee Anselm"    , rotation_period: "33"            , orbital_period: "206"          , diameter: "15600"   , climate: "tropical, temperate"       , gravity: "1"                                      , terrain: "lakes, islands, swamps, seas"             , surface_water: "80"          , population: "500000000"    )
planet_45 = Planet.create(name: "Iridonia"       , rotation_period: "29"            , orbital_period: "413"          , diameter: "unknown" , climate: "unknown"                   , gravity: "unknown"                                , terrain: "rocky canyons, acid pools"                , surface_water: "unknown"     , population: "unknown"      )
planet_46 = Planet.create(name: "Tholoth"        , rotation_period: "unknown"       , orbital_period: "unknown"      , diameter: "unknown" , climate: "unknown"                   , gravity: "unknown"                                , terrain: "unknown"                                  , surface_water: "unknown"     , population: "unknown"      )
planet_47 = Planet.create(name: "Iktotch"        , rotation_period: "22"            , orbital_period: "481"          , diameter: "unknown" , climate: "arid, rocky, windy"        , gravity: "1"                                      , terrain: "rocky"                                    , surface_water: "unknown"     , population: "unknown"      )
planet_48 = Planet.create(name: "Quermia"        , rotation_period: "unknown"       , orbital_period: "unknown"      , diameter: "unknown" , climate: "unknown"                   , gravity: "unknown"                                , terrain: "unknown"                                  , surface_water: "unknown"     , population: "unknown"      )
planet_49 = Planet.create(name: "Dorin"          , rotation_period: "22"            , orbital_period: "409"          , diameter: "13400"   , climate: "temperate"                 , gravity: "1"                                      , terrain: "unknown"                                  , surface_water: "unknown"     , population: "unknown"      )
planet_50 = Planet.create(name: "Champala"       , rotation_period: "27"            , orbital_period: "318"          , diameter: "unknown" , climate: "temperate"                 , gravity: "1"                                      , terrain: "oceans, rainforests, plateaus"            , surface_water: "unknown"     , population: "3500000000"   )
planet_51 = Planet.create(name: "Mirial"         , rotation_period: "unknown"       , orbital_period: "unknown"      , diameter: "unknown" , climate: "unknown"                   , gravity: "unknown"                                , terrain: "deserts"                                  , surface_water: "unknown"     , population: "unknown"      )
planet_52 = Planet.create(name: "Serenno"        , rotation_period: "unknown"       , orbital_period: "unknown"      , diameter: "unknown" , climate: "unknown"                   , gravity: "unknown"                                , terrain: "rainforests, rivers, mountains"           , surface_water: "unknown"     , population: "unknown"      )
planet_53 = Planet.create(name: "Concord Dawn"   , rotation_period: "unknown"       , orbital_period: "unknown"      , diameter: "unknown" , climate: "unknown"                   , gravity: "unknown"                                , terrain: "jungles, forests, deserts"                , surface_water: "unknown"     , population: "unknown"      )
planet_54 = Planet.create(name: "Zolan"          , rotation_period: "unknown"       , orbital_period: "unknown"      , diameter: "unknown" , climate: "unknown"                   , gravity: "unknown"                                , terrain: "unknown"                                  , surface_water: "unknown"     , population: "unknown"      )
planet_55 = Planet.create(name: "Ojom"           , rotation_period: "unknown"       , orbital_period: "unknown"      , diameter: "unknown" , climate: "frigid"                    , gravity: "unknown"                                , terrain: "oceans, glaciers"                         , surface_water: "100"         , population: "500000000"    )
planet_56 = Planet.create(name: "Skako"          , rotation_period: "27"            , orbital_period: "384"          , diameter: "unknown" , climate: "temperate"                 , gravity: "1"                                      , terrain: "urban, vines"                             , surface_water: "unknown"     , population: "500000000000" )
planet_57 = Planet.create(name: "Muunilinst"     , rotation_period: "28"            , orbital_period: "412"          , diameter: "13800"   , climate: "temperate"                 , gravity: "1"                                      , terrain: "plains, forests, hills, mountains"        , surface_water: "25"          , population: "5000000000"   )
planet_58 = Planet.create(name: "Shili"          , rotation_period: "unknown"       , orbital_period: "unknown"      , diameter: "unknown" , climate: "temperate"                 , gravity: "1"                                      , terrain: "cities, savannahs, seas, plains"          , surface_water: "unknown"     , population: "unknown"      )
planet_59 = Planet.create(name: "Kalee"          , rotation_period: "23"            , orbital_period: "378"          , diameter: "13850"   , climate: "arid, temperate, tropical" , gravity: "1"                                      , terrain: "rainforests, cliffs, canyons, seas"       , surface_water: "unknown"     , population: "4000000000"   )
planet_60 = Planet.create(name: "Umbara"         , rotation_period: "unknown"       , orbital_period: "unknown"      , diameter: "unknown" , climate: "unknown"                   , gravity: "unknown"                                , terrain: "unknown"                                  , surface_water: "unknown"     , population: "unknown"      )

person_1 = Person.create(name: "Luke Skywalker"        , height: "172"     , mass: "77"      , hair_color: "blond"         , skin_color: "fair"                , eye_color: "blue"          , birth_year: "19BBY"    , gender: "male"          ,        planet: planet_1)
person_2 = Person.create(name: "C-3PO"                 , height: "167"     , mass: "75"      , hair_color: "n/a"           , skin_color: "gold"                , eye_color: "yellow"        , birth_year: "112BBY"   , gender: "n/a"           ,        planet: planet_1)
person_3 = Person.create(name: "R2-D2"                 , height: "96"      , mass: "32"      , hair_color: "n/a"           , skin_color: "white, blue"         , eye_color: "red"           , birth_year: "33BBY"    , gender: "n/a"           ,        planet: planet_8)
person_4 = Person.create(name: "Darth Vader"           , height: "202"     , mass: "136"     , hair_color: "none"          , skin_color: "white"               , eye_color: "yellow"        , birth_year: "41.9BBY"  , gender: "male"          ,        planet: planet_1)
person_5 = Person.create(name: "Leia Organa"           , height: "150"     , mass: "49"      , hair_color: "brown"         , skin_color: "light"               , eye_color: "brown"         , birth_year: "19BBY"    , gender: "female"        ,        planet: planet_2)
person_6 = Person.create(name: "Owen Lars"             , height: "178"     , mass: "120"     , hair_color: "brown, grey"   , skin_color: "light"               , eye_color: "blue"          , birth_year: "52BBY"    , gender: "male"          ,        planet: planet_1)
person_7 = Person.create(name: "Beru Whitesun lars"    , height: "165"     , mass: "75"      , hair_color: "brown"         , skin_color: "light"               , eye_color: "blue"          , birth_year: "47BBY"    , gender: "female"        ,        planet: planet_1)
person_8 = Person.create(name: "R5-D4"                 , height: "97"      , mass: "32"      , hair_color: "n/a"           , skin_color: "white, red"          , eye_color: "red"           , birth_year: "unknown"  , gender: "n/a"           ,        planet: planet_1)
person_9 = Person.create(name: "Biggs Darklighter"     , height: "183"     , mass: "84"      , hair_color: "black"         , skin_color: "light"               , eye_color: "brown"         , birth_year: "24BBY"    , gender: "male"          ,        planet: planet_1)
person_10 = Person.create(name: "Obi-Wan Kenobi"        , height: "182"     , mass: "77"      , hair_color: "auburn, white" , skin_color: "fair"                , eye_color: "blue-gray"     , birth_year: "57BBY"    , gender: "male"          ,       planet: planet_20)
person_11 = Person.create(name: "Anakin Skywalker"      , height: "188"     , mass: "84"      , hair_color: "blond"         , skin_color: "fair"                , eye_color: "blue"          , birth_year: "41.9BBY"  , gender: "male"          ,        planet: planet_1)
person_12 = Person.create(name: "Wilhuff Tarkin"        , height: "180"     , mass: "unknown" , hair_color: "auburn, grey"  , skin_color: "fair"                , eye_color: "blue"          , birth_year: "64BBY"    , gender: "male"          ,       planet: planet_21)
person_13 = Person.create(name: "Chewbacca"             , height: "228"     , mass: "112"     , hair_color: "brown"         , skin_color: "unknown"             , eye_color: "blue"          , birth_year: "200BBY"   , gender: "male"          ,       planet: planet_14)
person_14 = Person.create(name: "Han Solo"              , height: "180"     , mass: "80"      , hair_color: "brown"         , skin_color: "fair"                , eye_color: "brown"         , birth_year: "29BBY"    , gender: "male"          ,       planet: planet_22)
person_15 = Person.create(name: "Greedo"                , height: "173"     , mass: "74"      , hair_color: "n/a"           , skin_color: "green"               , eye_color: "black"         , birth_year: "44BBY"    , gender: "male"          ,       planet: planet_23)
person_16 = Person.create(name: "Jabba Desilijic Tiure" , height: "175"     , mass: "1,358"   , hair_color: "n/a"           , skin_color: "green-tan, brown"    , eye_color: "orange"        , birth_year: "600BBY"   , gender: "hermaphrodite" ,       planet: planet_24)
person_18 = Person.create(name: "Wedge Antilles"        , height: "170"     , mass: "77"      , hair_color: "brown"         , skin_color: "fair"                , eye_color: "hazel"         , birth_year: "21BBY"    , gender: "male"          ,       planet: planet_22)
person_19 = Person.create(name: "Jek Tono Porkins"      , height: "180"     , mass: "110"     , hair_color: "brown"         , skin_color: "fair"                , eye_color: "blue"          , birth_year: "unknown"  , gender: "male"          ,       planet: planet_26)
person_20 = Person.create(name: "Yoda"                  , height: "66"      , mass: "17"      , hair_color: "white"         , skin_color: "green"               , eye_color: "brown"         , birth_year: "896BBY"   , gender: "male"          ,       planet: planet_28)
person_21 = Person.create(name: "Palpatine"             , height: "170"     , mass: "75"      , hair_color: "grey"          , skin_color: "pale"                , eye_color: "yellow"        , birth_year: "82BBY"    , gender: "male"          ,        planet: planet_8)
person_22 = Person.create(name: "Boba Fett"             , height: "183"     , mass: "78.2"    , hair_color: "black"         , skin_color: "fair"                , eye_color: "brown"         , birth_year: "31.5BBY"  , gender: "male"          ,       planet: planet_10)
person_23 = Person.create(name: "IG-88"                 , height: "200"     , mass: "140"     , hair_color: "none"          , skin_color: "metal"               , eye_color: "red"           , birth_year: "15BBY"    , gender: "none"          ,       planet: planet_28)
person_24 = Person.create(name: "Bossk"                 , height: "190"     , mass: "113"     , hair_color: "none"          , skin_color: "green"               , eye_color: "red"           , birth_year: "53BBY"    , gender: "male"          ,       planet: planet_29)
person_25 = Person.create(name: "Lando Calrissian"      , height: "177"     , mass: "79"      , hair_color: "black"         , skin_color: "dark"                , eye_color: "brown"         , birth_year: "31BBY"    , gender: "male"          ,       planet: planet_30)
person_26 = Person.create(name: "Lobot"                 , height: "175"     , mass: "79"      , hair_color: "none"          , skin_color: "light"               , eye_color: "blue"          , birth_year: "37BBY"    , gender: "male"          ,        planet: planet_6)
person_27 = Person.create(name: "Ackbar"                , height: "180"     , mass: "83"      , hair_color: "none"          , skin_color: "brown mottle"        , eye_color: "orange"        , birth_year: "41BBY"    , gender: "male"          ,       planet: planet_31)
person_28 = Person.create(name: "Mon Mothma"            , height: "150"     , mass: "unknown" , hair_color: "auburn"        , skin_color: "fair"                , eye_color: "blue"          , birth_year: "48BBY"    , gender: "female"        ,       planet: planet_32)
person_29 = Person.create(name: "Arvel Crynyd"          , height: "unknown" , mass: "unknown" , hair_color: "brown"         , skin_color: "fair"                , eye_color: "brown"         , birth_year: "unknown"  , gender: "male"          ,       planet: planet_28)
person_30 = Person.create(name: "Wicket Systri Warrick" , height: "88"      , mass: "20"      , hair_color: "brown"         , skin_color: "brown"               , eye_color: "brown"         , birth_year: "8BBY"     , gender: "male"          ,        planet: planet_7)
person_31 = Person.create(name: "Nien Nunb"             , height: "160"     , mass: "68"      , hair_color: "none"          , skin_color: "grey"                , eye_color: "black"         , birth_year: "unknown"  , gender: "male"          ,       planet: planet_33)
person_32 = Person.create(name: "Qui-Gon Jinn"          , height: "193"     , mass: "89"      , hair_color: "brown"         , skin_color: "fair"                , eye_color: "blue"          , birth_year: "92BBY"    , gender: "male"          ,       planet: planet_28)
person_33 = Person.create(name: "Nute Gunray"           , height: "191"     , mass: "90"      , hair_color: "none"          , skin_color: "mottled green"       , eye_color: "red"           , birth_year: "unknown"  , gender: "male"          ,       planet: planet_18)
person_34 = Person.create(name: "Finis Valorum"         , height: "170"     , mass: "unknown" , hair_color: "blond"         , skin_color: "fair"                , eye_color: "blue"          , birth_year: "91BBY"    , gender: "male"          ,        planet: planet_9)
person_35 = Person.create(name: "Padmé Amidala"         , height: "185"     , mass: "45"      , hair_color: "brown"         , skin_color: "light"               , eye_color: "brown"         , birth_year: "46BBY"    , gender: "female"        ,        planet: planet_8)
person_36 = Person.create(name: "Jar Jar Binks"         , height: "196"     , mass: "66"      , hair_color: "none"          , skin_color: "orange"              , eye_color: "orange"        , birth_year: "52BBY"    , gender: "male"          ,        planet: planet_8)
person_37 = Person.create(name: "Roos Tarpals"          , height: "224"     , mass: "82"      , hair_color: "none"          , skin_color: "grey"                , eye_color: "orange"        , birth_year: "unknown"  , gender: "male"          ,        planet: planet_8)
person_38 = Person.create(name: "Rugor Nass"            , height: "206"     , mass: "unknown" , hair_color: "none"          , skin_color: "green"               , eye_color: "orange"        , birth_year: "unknown"  , gender: "male"          ,        planet: planet_8)
person_39 = Person.create(name: "Ric Olié"              , height: "183"     , mass: "unknown" , hair_color: "brown"         , skin_color: "fair"                , eye_color: "blue"          , birth_year: "unknown"  , gender: "male"          ,        planet: planet_8)
person_40 = Person.create(name: "Watto"                 , height: "137"     , mass: "unknown" , hair_color: "black"         , skin_color: "blue, grey"          , eye_color: "yellow"        , birth_year: "unknown"  , gender: "male"          ,       planet: planet_34)
person_41 = Person.create(name: "Sebulba"               , height: "112"     , mass: "40"      , hair_color: "none"          , skin_color: "grey, red"           , eye_color: "orange"        , birth_year: "unknown"  , gender: "male"          ,       planet: planet_35)
person_42 = Person.create(name: "Quarsh Panaka"         , height: "183"     , mass: "unknown" , hair_color: "black"         , skin_color: "dark"                , eye_color: "brown"         , birth_year: "62BBY"    , gender: "male"          ,        planet: planet_8)
person_43 = Person.create(name: "Shmi Skywalker"        , height: "163"     , mass: "unknown" , hair_color: "black"         , skin_color: "fair"                , eye_color: "brown"         , birth_year: "72BBY"    , gender: "female"        ,        planet: planet_1)
person_44 = Person.create(name: "Darth Maul"            , height: "175"     , mass: "80"      , hair_color: "none"          , skin_color: "red"                 , eye_color: "yellow"        , birth_year: "54BBY"    , gender: "male"          ,       planet: planet_36)
person_45 = Person.create(name: "Bib Fortuna"           , height: "180"     , mass: "unknown" , hair_color: "none"          , skin_color: "pale"                , eye_color: "pink"          , birth_year: "unknown"  , gender: "male"          ,       planet: planet_37)
person_46 = Person.create(name: "Ayla Secura"           , height: "178"     , mass: "55"      , hair_color: "none"          , skin_color: "blue"                , eye_color: "hazel"         , birth_year: "48BBY"    , gender: "female"        ,       planet: planet_37)
person_47 = Person.create(name: "Ratts Tyerel"          , height: "79"      , mass: "15"      , hair_color: "none"          , skin_color: "grey, blue"          , eye_color: "unknown"       , birth_year: "unknown"  , gender: "male"          ,       planet: planet_38)
person_48 = Person.create(name: "Dud Bolt"              , height: "94"      , mass: "45"      , hair_color: "none"          , skin_color: "blue, grey"          , eye_color: "yellow"        , birth_year: "unknown"  , gender: "male"          ,       planet: planet_39)
person_49 = Person.create(name: "Gasgano"               , height: "122"     , mass: "unknown" , hair_color: "none"          , skin_color: "white, blue"         , eye_color: "black"         , birth_year: "unknown"  , gender: "male"          ,       planet: planet_40)
person_50 = Person.create(name: "Ben Quadinaros"        , height: "163"     , mass: "65"      , hair_color: "none"          , skin_color: "grey, green, yellow" , eye_color: "orange"        , birth_year: "unknown"  , gender: "male"          ,       planet: planet_41)
person_51 = Person.create(name: "Mace Windu"            , height: "188"     , mass: "84"      , hair_color: "none"          , skin_color: "dark"                , eye_color: "brown"         , birth_year: "72BBY"    , gender: "male"          ,       planet: planet_42)
person_52 = Person.create(name: "Ki-Adi-Mundi"          , height: "198"     , mass: "82"      , hair_color: "white"         , skin_color: "pale"                , eye_color: "yellow"        , birth_year: "92BBY"    , gender: "male"          ,       planet: planet_43)
person_53 = Person.create(name: "Kit Fisto"             , height: "196"     , mass: "87"      , hair_color: "none"          , skin_color: "green"               , eye_color: "black"         , birth_year: "unknown"  , gender: "male"          ,       planet: planet_44)
person_54 = Person.create(name: "Eeth Koth"             , height: "171"     , mass: "unknown" , hair_color: "black"         , skin_color: "brown"               , eye_color: "brown"         , birth_year: "unknown"  , gender: "male"          ,       planet: planet_45)
person_55 = Person.create(name: "Adi Gallia"            , height: "184"     , mass: "50"      , hair_color: "none"          , skin_color: "dark"                , eye_color: "blue"          , birth_year: "unknown"  , gender: "female"        ,        planet: planet_9)
person_56 = Person.create(name: "Saesee Tiin"           , height: "188"     , mass: "unknown" , hair_color: "none"          , skin_color: "pale"                , eye_color: "orange"        , birth_year: "unknown"  , gender: "male"          ,       planet: planet_47)
person_57 = Person.create(name: "Yarael Poof"           , height: "264"     , mass: "unknown" , hair_color: "none"          , skin_color: "white"               , eye_color: "yellow"        , birth_year: "unknown"  , gender: "male"          ,       planet: planet_48)
person_58 = Person.create(name: "Plo Koon"              , height: "188"     , mass: "80"      , hair_color: "none"          , skin_color: "orange"              , eye_color: "black"         , birth_year: "22BBY"    , gender: "male"          ,       planet: planet_49)
person_59 = Person.create(name: "Mas Amedda"            , height: "196"     , mass: "unknown" , hair_color: "none"          , skin_color: "blue"                , eye_color: "blue"          , birth_year: "unknown"  , gender: "male"          ,       planet: planet_50)
person_60 = Person.create(name: "Gregar Typho"          , height: "185"     , mass: "85"      , hair_color: "black"         , skin_color: "dark"                , eye_color: "brown"         , birth_year: "unknown"  , gender: "male"          ,        planet: planet_8)
person_61 = Person.create(name: "Cordé"                 , height: "157"     , mass: "unknown" , hair_color: "brown"         , skin_color: "light"               , eye_color: "brown"         , birth_year: "unknown"  , gender: "female"        ,        planet: planet_8)
person_62 = Person.create(name: "Cliegg Lars"           , height: "183"     , mass: "unknown" , hair_color: "brown"         , skin_color: "fair"                , eye_color: "blue"          , birth_year: "82BBY"    , gender: "male"          ,        planet: planet_1)
person_63 = Person.create(name: "Poggle the Lesser"     , height: "183"     , mass: "80"      , hair_color: "none"          , skin_color: "green"               , eye_color: "yellow"        , birth_year: "unknown"  , gender: "male"          ,       planet: planet_11)
person_64 = Person.create(name: "Luminara Unduli"       , height: "170"     , mass: "56.2"    , hair_color: "black"         , skin_color: "yellow"              , eye_color: "blue"          , birth_year: "58BBY"    , gender: "female"        ,       planet: planet_51)
person_65 = Person.create(name: "Barriss Offee"         , height: "166"     , mass: "50"      , hair_color: "black"         , skin_color: "yellow"              , eye_color: "blue"          , birth_year: "40BBY"    , gender: "female"        ,       planet: planet_51)
person_66 = Person.create(name: "Dormé"                 , height: "165"     , mass: "unknown" , hair_color: "brown"         , skin_color: "light"               , eye_color: "brown"         , birth_year: "unknown"  , gender: "female"        ,        planet: planet_8)
person_67 = Person.create(name: "Dooku"                 , height: "193"     , mass: "80"      , hair_color: "white"         , skin_color: "fair"                , eye_color: "brown"         , birth_year: "102BBY"   , gender: "male"          ,       planet: planet_52)
person_68 = Person.create(name: "Bail Prestor Organa"   , height: "191"     , mass: "unknown" , hair_color: "black"         , skin_color: "tan"                 , eye_color: "brown"         , birth_year: "67BBY"    , gender: "male"          ,        planet: planet_2)
person_69 = Person.create(name: "Jango Fett"            , height: "183"     , mass: "79"      , hair_color: "black"         , skin_color: "tan"                 , eye_color: "brown"         , birth_year: "66BBY"    , gender: "male"          ,       planet: planet_53)
person_70 = Person.create(name: "Zam Wesell"            , height: "168"     , mass: "55"      , hair_color: "blonde"        , skin_color: "fair, green, yellow" , eye_color: "yellow"        , birth_year: "unknown"  , gender: "female"        ,       planet: planet_54)
person_71 = Person.create(name: "Dexter Jettster"       , height: "198"     , mass: "102"     , hair_color: "none"          , skin_color: "brown"               , eye_color: "yellow"        , birth_year: "unknown"  , gender: "male"          ,       planet: planet_55)
person_72 = Person.create(name: "Lama Su"               , height: "229"     , mass: "88"      , hair_color: "none"          , skin_color: "grey"                , eye_color: "black"         , birth_year: "unknown"  , gender: "male"          ,       planet: planet_10)
person_73 = Person.create(name: "Taun We"               , height: "213"     , mass: "unknown" , hair_color: "none"          , skin_color: "grey"                , eye_color: "black"         , birth_year: "unknown"  , gender: "female"        ,       planet: planet_10)
person_74 = Person.create(name: "Jocasta Nu"            , height: "167"     , mass: "unknown" , hair_color: "white"         , skin_color: "fair"                , eye_color: "blue"          , birth_year: "unknown"  , gender: "female"        ,        planet: planet_9)
person_75 = Person.create(name: "R4-P17"                , height: "96"      , mass: "unknown" , hair_color: "none"          , skin_color: "silver, red"         , eye_color: "red, blue"     , birth_year: "unknown"  , gender: "female"        ,       planet: planet_28)
person_76 = Person.create(name: "Wat Tambor"            , height: "193"     , mass: "48"      , hair_color: "none"          , skin_color: "green, grey"         , eye_color: "unknown"       , birth_year: "unknown"  , gender: "male"          ,       planet: planet_56)
person_77 = Person.create(name: "San Hill"              , height: "191"     , mass: "unknown" , hair_color: "none"          , skin_color: "grey"                , eye_color: "gold"          , birth_year: "unknown"  , gender: "male"          ,       planet: planet_57)
person_78 = Person.create(name: "Shaak Ti"              , height: "178"     , mass: "57"      , hair_color: "none"          , skin_color: "red, blue, white"    , eye_color: "black"         , birth_year: "unknown"  , gender: "female"        ,       planet: planet_58)
person_79 = Person.create(name: "Grievous"              , height: "216"     , mass: "159"     , hair_color: "none"          , skin_color: "brown, white"        , eye_color: "green, yellow" , birth_year: "unknown"  , gender: "male"          ,       planet: planet_59)
person_80 = Person.create(name: "Tarfful"               , height: "234"     , mass: "136"     , hair_color: "brown"         , skin_color: "brown"               , eye_color: "blue"          , birth_year: "unknown"  , gender: "male"          ,       planet: planet_14)
person_81 = Person.create(name: "Raymus Antilles"       , height: "188"     , mass: "79"      , hair_color: "brown"         , skin_color: "light"               , eye_color: "brown"         , birth_year: "unknown"  , gender: "male"          ,        planet: planet_2)
person_82 = Person.create(name: "Sly Moore"             , height: "178"     , mass: "48"      , hair_color: "none"          , skin_color: "pale"                , eye_color: "white"         , birth_year: "unknown"  , gender: "female"        ,       planet: planet_60)
person_83 = Person.create(name: "Tion Medon"            , height: "206"     , mass: "80"      , hair_color: "none"          , skin_color: "grey"                , eye_color: "black"         , birth_year: "unknown"  , gender: "male"          ,       planet: planet_12)

person_1.films << film_1
person_1.films << film_2
person_1.films << film_3
person_1.films << film_6
person_2.films << film_1
person_2.films << film_2
person_2.films << film_3
person_2.films << film_4
person_2.films << film_5
person_2.films << film_6
person_3.films << film_1
person_3.films << film_2
person_3.films << film_3
person_3.films << film_4
person_3.films << film_5
person_3.films << film_6
person_4.films << film_1
person_4.films << film_2
person_4.films << film_3
person_4.films << film_6
person_5.films << film_1
person_5.films << film_2
person_5.films << film_3
person_5.films << film_6
person_6.films << film_1
person_6.films << film_5
person_6.films << film_6
person_7.films << film_1
person_7.films << film_5
person_7.films << film_6
person_8.films << film_1
person_9.films << film_1
person_10.films << film_1
person_10.films << film_2
person_10.films << film_3
person_10.films << film_4
person_10.films << film_5
person_10.films << film_6
person_11.films << film_4
person_11.films << film_5
person_11.films << film_6
person_12.films << film_1
person_12.films << film_6
person_13.films << film_1
person_13.films << film_2
person_13.films << film_3
person_13.films << film_6
person_14.films << film_1
person_14.films << film_2
person_14.films << film_3
person_15.films << film_1
person_16.films << film_1
person_16.films << film_3
person_16.films << film_4
person_18.films << film_1
person_18.films << film_2
person_18.films << film_3
person_19.films << film_1
person_20.films << film_2
person_20.films << film_3
person_20.films << film_4
person_20.films << film_5
person_20.films << film_6
person_21.films << film_2
person_21.films << film_3
person_21.films << film_4
person_21.films << film_5
person_21.films << film_6
person_22.films << film_2
person_22.films << film_3
person_22.films << film_5
person_23.films << film_2
person_24.films << film_2
person_25.films << film_2
person_25.films << film_3
person_26.films << film_2
person_27.films << film_3
person_28.films << film_3
person_29.films << film_3
person_30.films << film_3
person_31.films << film_3
person_32.films << film_4
person_33.films << film_4
person_33.films << film_5
person_33.films << film_6
person_34.films << film_4
person_35.films << film_4
person_35.films << film_5
person_35.films << film_6
person_36.films << film_4
person_36.films << film_5
person_37.films << film_4
person_38.films << film_4
person_39.films << film_4
person_40.films << film_4
person_40.films << film_5
person_41.films << film_4
person_42.films << film_4
person_43.films << film_4
person_43.films << film_5
person_44.films << film_4
person_45.films << film_3
person_46.films << film_4
person_46.films << film_5
person_46.films << film_6
person_47.films << film_4
person_48.films << film_4
person_49.films << film_4
person_50.films << film_4
person_51.films << film_4
person_51.films << film_5
person_51.films << film_6
person_52.films << film_4
person_52.films << film_5
person_52.films << film_6
person_53.films << film_4
person_53.films << film_5
person_53.films << film_6
person_54.films << film_4
person_54.films << film_6
person_55.films << film_4
person_55.films << film_6
person_56.films << film_4
person_56.films << film_6
person_57.films << film_4
person_58.films << film_4
person_58.films << film_5
person_58.films << film_6
person_59.films << film_4
person_59.films << film_5
person_60.films << film_5
person_61.films << film_5
person_62.films << film_5
person_63.films << film_5
person_63.films << film_6
person_64.films << film_5
person_64.films << film_6
person_65.films << film_5
person_66.films << film_5
person_67.films << film_5
person_67.films << film_6
person_68.films << film_5
person_68.films << film_6
person_69.films << film_5
person_70.films << film_5
person_71.films << film_5
person_72.films << film_5
person_73.films << film_5
person_74.films << film_5
person_75.films << film_5
person_75.films << film_6
person_76.films << film_5
person_77.films << film_5
person_78.films << film_5
person_78.films << film_6
person_79.films << film_6
person_80.films << film_6
person_81.films << film_1
person_81.films << film_6
person_82.films << film_5
person_82.films << film_6
person_83.films << film_6

planet_1.films << film_1
planet_1.films << film_3
planet_1.films << film_4
planet_1.films << film_5
planet_1.films << film_6
planet_2.films << film_1
planet_2.films << film_6
planet_3.films << film_1
planet_4.films << film_2
planet_5.films << film_2
planet_5.films << film_3
planet_5.films << film_6
planet_6.films << film_2
planet_7.films << film_3
planet_8.films << film_3
planet_8.films << film_4
planet_8.films << film_5
planet_8.films << film_6
planet_9.films << film_3
planet_9.films << film_4
planet_9.films << film_5
planet_9.films << film_6
planet_10.films << film_5
planet_11.films << film_5
planet_12.films << film_6
planet_13.films << film_6
planet_14.films << film_6
planet_15.films << film_6
planet_16.films << film_6
planet_17.films << film_6
planet_18.films << film_6
planet_19.films << film_6
planet_27.films << film_2

puts 'seed completed'
