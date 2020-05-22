const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jquery: 'jquery',
    jQuery: 'jquery'
  })
);

const aliasConfig = { 
  'jquery': 'jquery/src/jquery',
  'jquery-ui': 'jquery-ui/ui/jquery-1-7'
}

environment.config.set('resolve.alias', aliasConfig);


module.exports = environment