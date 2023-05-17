module apps.crm.controllers.pages.error;

import apps.crm;
@safe:

class DcrmErrorPageController : DAPPPageController {
  mixin(ControllerThis!("crmErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(crmErrorView(this));
  }
}
mixin(ControllerCalls!("crmErrorPageController"));
