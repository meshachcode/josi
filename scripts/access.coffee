# Description:
#
# Dependencies:
#   "josi-access": "*"
#
# Configuration:
#
# Commands:
# 	hubot access - Loaded JoSi Scripts
#
# Author:
#   Jolly Science

module.exports = (robot) ->
  name = 'access'
  robot.respond new RegExp(name, 'i'), (msg) ->
    msg.send "This is where you should see all of the info on JoSi-#{name}"
  robot.brain.on "loaded", =>
    robot.logger.info "Loaded: josi-#{name}"
    modules = ["contexts"]
    robot.brain.data.access = {}
    for mod in modules
      robot.brain.data.access[mod] = {}