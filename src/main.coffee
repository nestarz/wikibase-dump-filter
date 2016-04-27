split = require 'split'
program = require('./lib/program')()
filter = require './lib/filter'
wikidataFilter = require('./lib/wikidata_filter')(program)

process.stdin
.pipe split()
.pipe filter(wikidataFilter)
.pipe process.stdout