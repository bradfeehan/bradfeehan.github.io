###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", layout: false
#
# With alternative layout
# page "/path/to/file.html", layout: :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

configure :development do
  # Pretty-print Slim-generated HTML in development
  Slim::Engine.set_default_options pretty: true
end

# Use HTML5 formatter for Slim templates
Slim::Engine.set_default_options format: :html5


# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

helpers do
  # Retrieves the current page key, which uniquely identifies the page
  #
  # e.g. for index.html.slim, the page key is "index".
  def current_page_key
    current_page.path.match(/^[^\.]+/).to_s
  end

  # Retrieves the job data sorted by end date
  def jobs
    sort_by_term_end_date data.jobs
  end

  # Retrieves the course data sorted by end date
  def courses
    sort_by_term_end_date data.courses
  end

  # Sorts a collection by the end date
  def sort_by_term_end_date(collection)
    collection.sort_by do |entity|
      (entity.term.end rescue nil) || Date.today
    end.reverse
  end
end

set :css_dir, "css"

set :js_dir, "js"

set :images_dir, "img"

set :partials_dir, "partials"

sprockets.import_asset 'vendor/modernizr.js'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

# Load locale files from "locale" directory
activate :i18n

# Activate "directory_indexes" extension (pretty URLs)
activate :directory_indexes

# Activate "middleman-blog" gem
activate :blog do |blog|
  blog.layout = "blog"
  blog.prefix = "blog"
  blog.permalink = "{title}/index.html"
end
