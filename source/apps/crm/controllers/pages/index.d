module apps.crm.controllers.pages.index;

import apps.crm;
@safe:

class DcrmIndexPageController : DAPPPageController {
  mixin(ControllerThis!("crmIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(crmIndexView(this));
  }
}
mixin(ControllerCalls!("crmIndexPageController"));
