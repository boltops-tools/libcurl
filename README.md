# Libcurl

[![BoltOps Badge](https://img.boltops.com/boltops/badges/boltops-badge.png)](https://www.boltops.com)

This libcurl gem is used to tell serverlessgems build a libcurl gem that contains libcurl shared library files for AWS Lambda.

Install the gem and add to the application's Gemfile by executing:

    bundle add libcurl

## Notes

This gem can be used to use libcurl shared libraries on AWS Lambda.

Note: For gems like [ethon](https://github.com/typhoeus/ethon) and [typhoeus](https://github.com/typhoeus/typhoeus) serverlessgems already detects that it requires pre-compiled libcurl shared libraries and this gem is **not** needed. However, if there are other gems that's serverlessgems is not yet aware of, you can add this gem and it'll allow those gems to work without having to wait for serverlessgems updates.

Also note: Though, gem that use libcurl shared libraries work on AWS Lambda. It is recommended to use other gems that do not rely on libcurl shared libraries when possible. This is because building the shared libcurl libraries for AWS Lambda proved to be quite tricky. It might not be possible later, depending on how AWS Lambda handles libcurl shared libraries in the future.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/boltops-tools/libcurl

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
