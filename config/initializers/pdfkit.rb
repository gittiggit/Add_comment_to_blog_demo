PDFKit.configure do |config|
   #config.wkhtmltopdf = '/path/to/wkhtmltopdf-binary'
  config.default_options = {
      :page_size => 'Legal',
      :print_media_type => true
  }
  # Use only if your external hostname is unavailable on the server.
  config.root_url = "http://localhost"
  # config.protocol = 'http'
  config.verbose = false
end

# PDFKit.configure do |config|
#
#   config.default_options = {
#       print_media_type: true,
#       page_size:'Legal',
#       # encoding: "UTF-8",
#       ## Make sure the zoom option is not enabled!
#       ## zoom: '1.3',
#       disable_smart_shrinking: false,
#       footer_right: "Page [page] of [toPage]"
#   }
#   config.root_url = "http://localhost"
#   config.verbose = false
# end