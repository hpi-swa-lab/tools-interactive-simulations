An ECSAssetBrowser is responsible for populating asset bundles and then allowing you to pick individual assets from them.

## Design
We outline the design decision we took for asset loading.

### Bundles
Bundles are a pointer to a well-known folder with assets. When moving to a different image or installing a system from scratch, the path to all required bundles has to be provided to the system, otherwise only placeholder entities will be returned. When a game is started and a bundle is missing, we prompt the user to tell us where to find the bundle.

### Asset Loading
After specifying a bundle, you can ask the browser for a bundle and then specify a relative file path to any file within the bundle folder.