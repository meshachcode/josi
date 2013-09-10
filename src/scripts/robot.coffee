# Description:
#
# Dependencies:
#   "josi-robot": "*"
#
# Configuration:
#
# Commands:
# 	hubot robot - Loaded JoSi Scripts
#
# Author:
#   Jolly Science

module.exports = (robot) ->
  name = 'robot'
  robot.respond new RegExp(name, 'i'), (msg) ->
    msg.send "This is where you should see all of the info on Josi-#{name}"
  robot.respond /persona/i, (msg) ->
    msg.send "Josi Robot - Loaded!"