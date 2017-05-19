
# chromeit
This bash script makes it easy to run node files in chrome, giving access to chrome's debugging tools. It works great for toy problems.
The script uses browserify for bundling so that npm modules can be used with require in your javascript file.
The script also uses live-server to monitor file changes and reload the page.

If grump has not yet been installed, you can do so using:
```bash
npm i -g grump
```

Example usage:
```
grump chromeit filename.js
```

see [grumpJS.com](https://grumpjs.com) to find other useful grumps!
