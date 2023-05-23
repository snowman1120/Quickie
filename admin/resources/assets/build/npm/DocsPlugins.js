'use strict'

const Plugins = [
  // AdminLTE Dist
  {
    from: 'dist/css/',
    to: 'docs/assets/css/'
  },
  {
    from: 'dist/js/',
    to: 'docs/assets/js/'
  },
  // jQuery
  {
    from: 'node_modules/jquery/dist/',
    to: 'docs/assets/vendor/jquery/'
  },
  // Popper
  {
    from: 'node_modules/popper.js/dist/',
    to: 'docs/assets/vendor/popper/'
  },
  // Bootstrap
  {
    from: 'node_modules/bootstrap/dist/js/',
    to: 'docs/assets/vendor/bootstrap/js/'
  },
  // Font Awesome
  {
    from: 'node_modules/@fortawesome/fontawesome-free/css/',
    to: 'docs/assets/vendor/fontawesome-free/css/'
  },
  {
    from: 'node_modules/@fortawesome/fontawesome-free/webfonts/',
    to: 'docs/assets/vendor/fontawesome-free/webfonts/'
  },
  // overlayScrollbars
  {
    from: 'node_modules/overlayscrollbars/js/',
    to: 'docs/assets/vendor/overlayScrollbars/js/'
  },
  {
    from: 'node_modules/overlayscrollbars/css/',
    to: 'docs/assets/vendor/overlayScrollbars/css/'
  }
]

module.exports = Plugins
