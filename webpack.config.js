const webpack = require('webpack');

module.exports = {
  entry: './src',
  output: {
    path: 'builds',
    filename: 'bundle.js',
  },
  plugins: [
    new webpack.ProvidePlugin({
      riot: 'riot'
    })
  ],
  module: {
    preLoaders: [{
      test: /\.tag$/,
      exclude: /node_modules/,
      loader: 'riotjs-loader',
      query: { style: 'sass' }
    }],
    loaders: [{
      test: /\.js/,
      loader: 'babel',
      include: __dirname + '/src',
    }, {
      test: /\.json$/,
      loader: 'json'
    }],
  }
};