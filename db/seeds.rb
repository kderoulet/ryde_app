# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Destination.destroy_all
User.destroy_all

Destination.create([
    { name: "Pacific Spaceport Complex", location: "Alaska", planet: "Earth", au: 1 },
    { name: "Edwards AFB", location: "California", planet: "Earth", au: 1 },
    { name: "Mojave Air and Space Port", location: "California", planet: "Earth", au: 1 },
    { name: "Vandenberg Air Force Base", location: "California", planet: "Earth", au: 1 },
    { name: "Cape Canaveral AFS", location: "Florida", planet: "Earth", au: 1 },
    { name: "Kennedy Space Center", location: "Florida", planet: "Earth", au: 1 },
    { name: "Mid-Atlantic Regional Spaceport", location: "Virginia", planet: "Earth", au: 1 },
    { name: "Moonbase", location: "Moon", planet: "Earth", au: 1.02 },
    { name: "Mercury Spaceport", location: "Mercury", planet: "Mercury", au: 0.4 },
    { name: "Venus Spaceport", location: "Venus", planet: "Venus", au: 0.7 },
    { name: "Gusev Mars Spaceport", location: "Gusev Crater", planet: "Mars", au: 1.5 },
    { name: "Boreum Mars Spaceport", location: "Planum Boreum", planet: "Mars", au: 1.5 },
    { name: "Jupiter Spaceport", location: "Jupiter", planet: "Jupiter", au: 5.2 },
    { name: "Ganymede Spaceport", location: "Ganymede", planet: "Jupiter", au: 5.23 },
    { name: "Callisto Spaceport", location: "Callisto", planet: "Jupiter", au: 5.17 },
    { name: "Io Spaceport", location: "Io", planet: "Jupiter", au: 5.18 },
    { name: "Europa Spaceport", location: "Europa", planet: "Jupiter", au: 5.22 },
    { name: "Saturn Spaceport", location: "Saturn", planet: "Saturn", au: 9.5 },
    { name: "Titan Spaceport", location: "Titan", planet: "Saturn", au: 9.52 },
    { name: "Enceladus Spaceport", location: "Enceladus", planet: "Saturn", au: 9.48 },
    { name: "Uranus Spaceport", location: "Uranus", planet: "Uranus", au: 19.2 },
    { name: "Titania Spaceport", location: "Titania", planet: "Uranus", au: 19.22 },
    { name: "Neptune Spaceport", location: "Neptune", planet: "Neptune", au: 30.1 },
    { name: "Triton Spaceport", location: "Triton", planet: "Neptune", au: 30.12 }
])
