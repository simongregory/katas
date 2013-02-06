Roman = require('./roman.coffee')

describe "Roman Numeral Converter", ->

  beforeEach ->
    @roman = new Roman

  it "converts arabic numbers to roman", ->
    list = [
      { arabic:1,  roman:'I'   }
      { arabic:2,  roman:'II'  }
      { arabic:3,  roman:'III' }
      { arabic:4,  roman:'IV'  }
      { arabic:5,  roman:'V'   }
      { arabic:9,  roman:'IX'  }
      { arabic:10, roman:'X'   }
    ]

    expect(@roman.convert(num.arabic)).toBe(num.roman) for num in list
