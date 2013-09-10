# Description:
#
# Dependencies:
#   "josi-aware": "*"
#
# Configuration:
#
# Commands:
# 	hubot aware - Loaded JoSi Scripts
#
# Author:
#   Jolly Science

module.exports = (robot) ->
  name = 'aware'
  robot.respond new RegExp(name, 'i'), (msg) ->
    msg.send "This is where you should see all of the info on JoSi-#{name}"

  robot.brain.on "loaded", =>
    robot.logger.info "Loaded: josi-#{name}"
    modules = ["events"]
    robot.brain.data.team = {}
    for mod in modules
      robot.brain.data[mod] = {}