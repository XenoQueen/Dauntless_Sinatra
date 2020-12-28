#Slayers
kat = Slayer.create(name: "Kat Sorrel", username: "ksorrel", password: "captain")
wils = Slayer.create(name: "Wils Bormen", username: "wbormen", password: "weapon")
middleman = Slayer.create(name: "The Middleman", username: "mman", password: "cells")
janek = Slayer.create(name: "Janek Zai", username: "jzai", password: "firearms")

#Behemoths
kat.behemoths.create(name: "Embermane", element: "Blaze")
wils.behemoths.create(name: "Pangar", element: "Frost")
middleman.behemoths.create(name: "Koshai", element: "Terra")
janek.behemoths.create(name: "Shrowd", element: "Umbral")