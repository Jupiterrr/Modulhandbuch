# encoding: utf-8
require "./lib/modhb"

MOD_INF_BA = ModHB.new


MOD_INF_BA << ModHB::ModItem.new({
  type: :compulsory, 
  name: "Datenbanksysteme", 
  ects: 4, 
  sws: 3, 
  achievements: [
    Archievment.new(true, "Klausur", ""),
    Archievment.new(false, "Übung", "")
  ],
  modul_id: "IN2INKD",
  no: 24516
})

MOD_INF_BA << ModHB::ModItem.new({
  type: :compulsory, 
  name: "Einführung in Rechnernetze", 
  ects: 4, 
  sws: 3, 
  achievements: [
    Archievment.new(true, "Klausur", "")
  ],
  modul_id: "IN2INKD",
  no: 24519
})

MOD_INF_BA << ModHB::ModItem.new({
  type: :compulsory, 
  name: "Algorithmen II", 
  ects: 6, 
  sws: 4, 
  achievements: [
    Archievment.new(true, "Klausur", "")
  ],
  modul_id: "IN3INALG2",
  no: 24079
})

MOD_INF_BA << ModHB::ModItem.new({
  type: :compulsory, 
  name: "Programmierparadigmen", 
  ects: 6, 
  sws: 4, 
  achievements: [
    Archievment.new(true, "Klausur", "")
  ],
  modul_id: "IN3INPROGP",
  no: 24030
})

MOD_INF_BA << ModHB::ModItem.new({
  type: :stammmodul, 
  name: "Kognitive Systeme", 
  ects: 6, 
  sws: 4, 
  achievements: [
    Archievment.new(true, "Klausur", "")
  ],
  modul_id: "IN3INKS",
  no: 24572
})




