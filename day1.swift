// 2019-12-12

func day1() {
  // Variables
  var str = "Hello, playground"
  print(str)
  str = "Goodbye"
  print(str)

  // Strings and integers
  let age = 38
  print(age)
  let population = 8_000_000
  print(population)

  // Multi-line strings
  str = """
  This goes
  over multiple
  lines
  """
  print(str)

  str = """
  This goes \
  over multiple \
  lines
  """
  print(str)

  // Doubles and booleans
  let pi = 3.141
  print(pi)
  let awesome = true
  print(awesome)

  // String interpolation
  let score = 85
  str = "Your score was \(score)"
  print(str)
  let results = "The test results are here: \(score)"
  print(results)

  // Constants
  let taylor = "swift"
  print(taylor)

  // Type inference
  let playThis = "Hello, playground"
  // Type annotations
  let album: String = "Reputation"
  let year: Int = 1989
  let height: Double = 1.78
  let taylorRocks: Bool = true
  str = """
  \(playThis)
  \(album)
  \(year)
  \(height)
  \(taylorRocks)
  """
  print(str)
}