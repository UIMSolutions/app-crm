module apps.crm;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import uim.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.crm.controllers;
  import apps.crm.helpers;
  import apps.crm.tests;
  import apps.crm.views;
}

DApp crmApp;
static this() {
  portalsApp = App
    .name("crmApp")
    .rootPath("/apps/crm")
    .addRoute(Route("/", HTTPMethod.GET, CRMIndexPageController));
}
