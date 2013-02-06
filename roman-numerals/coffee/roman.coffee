module.exports = class Roman

  list = [
    { arabic:10, roman:'X'  }
    { arabic:9,  roman:'IX' }
    { arabic:5,  roman:'V'  }
    { arabic:4,  roman:'IV' }
    { arabic:1,  roman:'I'  }
  ]

  convert: (num)->
    numeral = ''

    for marker in list
      while num >= marker.arabic
        numeral += marker.roman
        num -= marker.arabic

    numeral
