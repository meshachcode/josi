# Description:
#
# Dependencies:
#   "josi-brain": "*"
#
# Configuration:
#
# Commands:
#   hubot brain - Loaded JoSi Scripts
#
# Author:
#   Jolly Science

module.exports = (robot) ->
  name = "brain"

  robot.respond /persona/i, (msg) ->
    msg.send "Josi Brain - Loaded!"

  robot.respond new RegExp(name, 'i'), (msg) ->
    msg.send "This is where you should see all of the info on Josi-#{name}"

  robot.brain.on "loaded", (data) =>
    modules = ["learned", "responders", "knowledge"]
    for mod in modules
      robot.brain.data[mod] = {}