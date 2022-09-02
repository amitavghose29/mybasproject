"use strict";

const cds = require("@sap/cds");
//Leverage OData V2 in CAP Project
const proxy = require("@sap/cds-odata-v2-adapter-proxy");

cds.on("bootstrap", app => app.use(proxy()));

module.exports = cds.server;