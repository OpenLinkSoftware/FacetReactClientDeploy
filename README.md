# FacetReactClientDeploy

2020-Feb-20  
CMSB

A minimal Express web server for serving [FacetReactClient](https://github.com/cblakeley/FacetReactClient).

## Raison d'être

The webpack development server typically expects the application to be served from a root path '/'. If the application is deployed from a static file server, for instance a Virtuoso WebDAV folder http://virtuoso-host/DAV/..., the root path is nolonger '/'. Consequently serving FacetReactClient from a static file server will usually fail.

FacetReactClient uses client-side routing in the form of React Router. If the entry page is '/facet/index.html', requests for pages on a subpath, say '/facet/admin/' need to result in the client being served '/facet/index.html', as this page renders the notional subpath pages. The subpath pages don't exist. The routes in this minimal Express web server perform this rerouting to '/facet/index.html'

## Current Test Server

<http://osdb.openlinksw.com:4433/facet/>

## Notes

The base path from which FacetReactClient is served is set in `FacetReactClient/src/index.js`, through the `basename` property, i.e. `<BrowserRouter basename="/facet">`. The `baseUrl` property in `FacetReactClientDeploy/frcd/config.js` must match this `basename`.

## Background

* [Create React App: Serving Apps with Client Side Routing](https://create-react-app.dev/docs/deployment/#serving-apps-with-client-side-routing)
* [Serving a Node.js Express App from a Sub-Folder](https://hackernoon.com/serving-a-nodejs-express-app-from-a-subfolder-a-routing-lifehack-zj2ov35mf)

## See Also

* [branch develop](https://github.com/cblakeley/FacetReactClientDeploy/tree/develop)
