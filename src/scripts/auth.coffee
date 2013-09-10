# Description:
#
# Dependencies:
#   "josi-auth": "*"
#
# Configuration:
#
# Commands:
# 	hubot auth - Loaded JoSi Scripts
#
# Author:
#   Jolly Science

module.exports = (robot) ->
  name = 'auth'
  robot.respond new RegExp(name, 'i'), (msg) ->
    msg.send "This is where you should see all of the info on JoSi-#{name}"
  robot.brain.on "loaded", =>
    robot.logger.info "Loaded: josi-#{name}"
    modules = ["aliases"]
    robot.brain.data.admin = {}
    for mod in modules
      robot.brain.data.admin[mod] = {}