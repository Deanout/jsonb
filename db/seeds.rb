# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
payload = {
  grid: [
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 1, 1, 1, 1, 1, 1, 1, 1, 0],
    [0, 1, 2, 0, 0, 0, 0, 0, 1, 0],
    [0, 1, 0, 1, 1, 1, 1, 0, 1, 0],
    [0, 1, 0, 1, 0, 0, 1, 0, 1, 0],
    [0, 1, 0, 1, 0, 0, 1, 0, 1, 0],
    [0, 1, 0, 1, 1, 1, 1, 0, 1, 0],
    [0, 1, 0, 0, 0, 0, 0, 0, 1, 0],
    [0, 1, 1, 1, 1, 1, 1, 1, 1, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 3]
  ],
  start_node: [2, 2],
  goal_node: [7, 7],
  colors: {
    0 => '#ffffff',
    1 => '#000000',
    2 => '#00ff00',
    3 => '#ff0000'
  }
}
Grid.create(
  payload:
)

Grid.create(
  payload: {
    grid: [
      [2, 0],
      [1, 3]
    ],
    start_node: [0, 0],
    goal_node: [1, 1],
    colors: {
      0 => '#ffffff',
      1 => '#000000',
      2 => '#00ff00',
      3 => '#ff0000'
    }
  }
)
