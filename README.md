My goal when building this website was a simple, fast, long-term maintainable (which entails only open standards, and open source software), portable, static site.  To that end I've chosen to use Hakyll, Nix and Emacs Org-Mode.  This readme is intended to help with a couple sticking points in such a setup.  

The website is just a bit more than what hakyll-init gives you, modified to build with Nix following [utdemir](https://utdemir.com/posts/hakyll-on-nixos.html).  Nix is fantastic in that it means this site will build identically on any system with Nix installed, with no other dependencies. Nix will fetch the dependcies required, even compiling them if they are not available in a binary cache. Note that the nix-build command hashes the entire source folder to determine if and when it needs to rebuild, so in order to avoid unecessary rebuilds every time the content of the site changes, we need to keep the hakyll/haskell source for the site in a separate folder from the source for the content of the site, unlike the default hakyll project layout.

# To add new posts:
Simply place a file with appropriate metadata in the first few lines in site/posts.  Any filetype which pandoc can convert, which is most text formats, will work.  See the source of any of my posts for examples of the metadata formatting.

# To build:
       $ nix-build
in the repo root.  The build products will be in a symlinked folder named result/

# To publish:
With my setup, publishing is as simple as rsyncing the result folder to my host, [nearlyfreespeech.net](https://www.nearlyfreespeech.net), over ssh.
