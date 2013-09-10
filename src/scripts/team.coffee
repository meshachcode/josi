# Description:
#
# Dependencies:
#   "josi-team": "*"
#
# Configuration:
#
# Commands:
# 	hubot team - Loaded JoSi Scripts
#
# Author:
#   Jolly Science

module.exports = (robot) ->
  name = 'team'
  robot.respond new RegExp(name, 'i'), (msg) ->
    msg.send "This is where you should see all of the info on Josi-#{name}"
  robot.brain.on "loaded", =>
    robot.logger.info "Loaded: josi-#{name}"
    modules = ["teams"]
    for mod in modules
      robot.brain.data[mod] = {}