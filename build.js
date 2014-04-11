var metalsmith = require('metalsmith')
  , collections = require('metalsmith-collections')
  , markdown = require('metalsmith-markdown')
  , permalinks = require('metalsmith-permalinks')
  , templates = require('metalsmith-templates')
  , swig = require('swig')
  , fs = require('fs')

swig.setDefaults({ loader: swig.loaders.fs(__dirname + '/templates') });

var blog = metalsmith(__dirname);

var collect = collections({
  'posts' : {
    'sortBy' : 'date',
    'reverse' : true
  }
});

function complete(err) {
  if (err) {
    console.log('ERROR: ' + err);
  } else {
    console.log(blog.data);
    //buildIndex(blog.data.posts);
  }
}

function buildIndex(posts) {
  fs.writeFile(
    './site/index.html',
    swig.renderFile('index.html', { 'posts' : posts})
  );
}

blog.source('./content')
  .destination('./site')
  .use(markdown({ 'gfm' : true }))
  .use(collect)
  .use(permalinks('words/:title'))
  .use(templates({
    'engine' : 'swig',
    'directory' : 'templates'
  }))
  .build(complete);
