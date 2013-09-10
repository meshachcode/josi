# Description:
#
# Dependencies:
#   "josi": "*"
#
# Configuration:
#
# Commands:
# 	hubot persona - Shows you which Josi packages have been installed
# 
# Author:
#   Jolly Science

module.exports = (robot) ->
  robot.respond /persona/i, (msg) ->
    msg.send "Josi - Loaded!"

  robot.brain.on "loaded", =>
    robot.logger.info robot.brain.data
    robot.logger.info "#####################"
    robot.logger.info robot.commands