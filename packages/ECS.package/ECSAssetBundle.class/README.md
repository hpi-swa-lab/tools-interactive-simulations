An ECSAssetBundle is the superclass for asset bundles.

We index inside of asset bundles by an arbitrary identifier. This can be a path string or a rectangle into a tilemap.

The "unhappy" path for when an asset bundle is currently not loaded is as follows:

-> ECSAsset of:at:
-> ECSAssetBrowser assetCache
-> ECSAssetBundleMissingException defaultAction
-> ECSAssetBrowser registerAssetBundle:forDirectory:requestedIdentifier:assetClass:
-> ECSAssetBundle subclass new
-> assetBundle initialLoadWithRequested:
-> assetBundle assetAt: