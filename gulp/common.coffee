notify = require "gulp-notify"
_ = require "lodash"


module.exports = {
  errorHandler: _.curry (title, err) ->
    console.log err.toString()
    @emit("end")
    notify.onError(
      title: title
      subtitle: "Failure!"
      message:  "Error: <%= error.message %>"
      sound:    "Beep"
    )(err)

}
