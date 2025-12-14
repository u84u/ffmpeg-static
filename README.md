### FFMPEG-static

A work in construction for a fully static build of ffmpeg with all de/encoders, hardware accelerators, de/muxers, parsers, protocols, bitstream filters, in/outdevs, filters enabled with everything enabled in third party dependencies too.

TODO:
- build ffmpeg without any system dependencies and any extra features as a test
- figure out a way to split this system into different categories (bare-minimum, with-gplv3/lgpl, with-optimizations?)
- make a list of all third party libraries that ffmpeg uses and add them as submodules
- find all the third-third party libraries that they use recursively
- build the last 7.X version as a test
