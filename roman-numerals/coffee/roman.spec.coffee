Roman = require('./roman.coffee')

describe "Roman Numeral Converter", ->

  beforeEach ->
    @roman = new Roman()

  it "converts 1 to I", ->
      expect(@roman.convert(1)).toBe('I')
