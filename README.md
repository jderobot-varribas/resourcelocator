# ResourceLocator


**A tiny and simple library to locate anything under preconfigured paths.**

It will find filename into all defined search paths.
Order is:
 1. current dir
 2. environment variable ($YOUR_ENV_VAR)
 3. hardcored paths (string[])


## Example
```
> gladelocator.hpp

#include <resourcelocator/resourcelocator.hpp>
namespace resourcelocator {

std::string
inline findGladeFile(const std::string filename)
	{ return findFile(filename, "GLADE_PATH", "/usr/local/share/jderobot/glade"); }

}//NS
```

## License
*Copyright (C) 2015-2016 Victor Arribas*
*License: GPLv3 <http://www.gnu.org/licenses/gpl-3.0.html> or above*

*master at: https://github.com/jderobot-varribas/resourcelocator*
