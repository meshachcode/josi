# Description:
#
# Dependencies:
#   "josi-seek": "*"
#
# Configuration:
#
# Commands:
# 	hubot seek - Loaded JoSi Scripts
#
# Author:
#   Jolly Science

module.exports = (robot) ->
  name = 'seek'
  robot.respond new RegExp(name, 'i'), (msg) ->
    msg.send "This is where you should see all of the info on Josi-#{name}"
  robot.brain.on "loaded", =>
    robot.logger.info "Loaded: josi-#{name}"
    modules = ["cache"]
    for mod in modules
      robot.brain.data[mod] = {}