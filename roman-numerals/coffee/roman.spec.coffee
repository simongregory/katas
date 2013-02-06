Roman = require('./roman.coffee')

describe "Roman Numeral Converter", ->

  beforeEach ->
    @roman = new Roman()

  it "converts 1 to I", ->
    expect(@roman.convert(1)).toBe('I')

  it  "converts 2 to II", ->
    expect(@roman.convert(2)).toBe('II')

  it  "converts 3 to III", ->
    expect(@roman.convert(3)).toBe('III')

  it "converts 4 to IV", ->
    expect(@roman.convert(4)).toBe('IV')

  it "converts 5 to V", ->
    expect(@roman.convert(5)).toBe('V')
