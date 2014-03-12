var Metalsmith = require('metalsmith')
  , collections = require('metalsmith-collections')
  , markdown = require('metalsmith-markdown')
  , permalinks = require('metalsmith-permalinks')
  , templates = require('metalsmith-templates')
  , swig = require('swig');

Metalsmith(__dirname)
  .source('./content')
  .destination('./site')
  .use(markdown({ 'gfm' : true }))
  .use(permalinks('words/:title'))
  .use(templates({'engine' : 'swig', 'directory' : 'templates' }))
  .build(function(err) {
    if (err) {
      console.log('ERROR: ' + err);
    } else {
      console.log('Success');
    }
  });
