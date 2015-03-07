gulp = require "gulp"
libPath = require "path"
# jest = require "gulp-jest"
jest = require "jest-cli"
s = require "../settings"

utilsPath = libPath.resolve('./gulp/utils')
config =  {
  "scriptPreprocessor": utilsPath + "/preprocessor.coffee",
  "testFileExtensions": ["coffee", "js"]
  # "unmockedModulePathPatterns":s.path.jest()
  "rootDir": s.path.jest()
}

module.exports = (done)->
  jest.runCLI { config }, ".", -> done()
  return
  gulp.src s.path.jest()
    .pipe jest {
      "scriptPreprocessor": utilsPath + "/preprocessor.coffee",
      "testFileExtensions": ["coffee", "js"]
    }


# for futher use
# nodeModules = path.resolve('./node_modules');
# scriptPreprocessor: nodeModules + '/gulp-jest/preprocessor.js',
# unmockedModulePathPatterns: [nodeModules + '/react']
