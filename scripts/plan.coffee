# Description:
#
# Dependencies:
#   "josi-plan": "*"
#
# Configuration:
#
# Commands:
# 	hubot plan - Loaded JoSi Scripts
#
# Author:
#   Jolly Science

module.exports = (robot) ->
  name = 'plan'
  robot.respond new RegExp(name, 'i'), (msg) ->
    msg.send "This is where you should see all of the info on JoSi-#{name}"

  robot.brain.on "loaded", =>
    robot.logger.info "Loaded: josi-#{name}"