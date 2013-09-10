# Description:
#
# Dependencies:
#   "josi-play": "*"
#
# Configuration:
#
# Commands:
# 	hubot play - Loaded JoSi Scripts
#
# Author:
#   Jolly Science

module.exports = (robot) ->
  name = 'play'
  robot.respond new RegExp(name, 'i'), (msg) ->
    msg.send "This is where you should see all of the info on Josi-#{name}"

  robot.respond /persona/i, (msg) ->
    msg.send "Josi Play - Loaded!"
