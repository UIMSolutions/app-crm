module apps.crm;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import web.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.crm.controllers;
  import apps.crm.helpers;
  import apps.crm.routers;
  import apps.crm.tests;
  import apps.crm.views;
}

@safe:
static this() {
  auto myApp =     App("crmApp","apps/crm");

  with(myApp) {
    importTranslations;
    addControllers([
      "crm.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("crm.index")),
      Route("/", HTTPMethod.GET, controller("crm.index"))
    );
  }

  AppRegistry.register("apps.crm", myApp);
}
