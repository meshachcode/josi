# Description:
#
# Dependencies:
#   "josi-memory": "*"
#
# Configuration:
#
# Commands:
# 	hubot memory - Loaded JoSi Scripts
#
# Author:
#   Jolly Science

module.exports = (robot) ->
  name = 'memory'
  robot.respond new RegExp(name, 'i'), (msg) ->
    msg.send "This is where you should see all of the info on JoSi-#{name}"

  robot.brain.on "loaded", =>
    robot.logger.info "Loaded: josi-#{name}"