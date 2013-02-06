module.exports = class Roman

  convert: (num)->
    if num == 5
      return "V"

    if num == 4
      return "IV"

    if num == 3
      return "III"

    if num == 2
      return "II"

    "I"
