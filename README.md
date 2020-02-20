# FacetReactClientDeploy

2020-Feb-20  
CMSB

A minimal Express web server for serving [FactReactClient](https://github.com/cblakeley/FacetReactClient).

## Raison d'être
FacetReactClient uses client-side routing in the form of React Router. Serving FacetReactClient from a static file server will usually fail. For example, if you used React Router with a route for /facet/, the webpack development server will respond to localhost:8000/facet/ properly, but an Express server serving a production build will not.

## Current Test Server

<http://osdb.openlinksw.com:4433/facet/>

## Notes

The base path from which FacetReactClient is served is set in `FacetReactClient/src/index.js`, through the `basename` property, i.e. `<BrowserRouter basename="/facet">`. The `baseUrl` property in `FacetReactClientDeploy/frcd/config.js` must match this `basename`.

## Background

* [Create React App: Serving Apps with Client Side Routing](https://create-react-app.dev/docs/deployment/#serving-apps-with-client-side-routing)
* [Serving a Node.js Express App from a Sub-Folder](https://hackernoon.com/serving-a-nodejs-express-app-from-a-subfolder-a-routing-lifehack-zj2ov35mf)

## See Also

* [branch develop](https://github.com/cblakeley/FacetReactClientDeploy/tree/develop)
