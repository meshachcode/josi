# Description:
#
# Dependencies:
#   "josi-routes": "*"
#
# Configuration:
#
# Commands:
# 	hubot routes - Loaded JoSi Scripts
#
# Author:
#   Jolly Science

module.exports = (robot) ->
  name = 'routes'
  robot.respond new RegExp(name, 'i'), (msg) ->
    msg.send "This is where you should see all of the info on Josi-#{name}"
  robot.brain.on "loaded", =>
    robot.logger.info "Loaded: josi-#{name}"
    modules = ["routes"]
    for mod in modules
      robot.brain.data[mod] = {}