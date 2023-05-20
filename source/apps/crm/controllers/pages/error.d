module apps.crm.controllers.pages.error;

import apps.crm;
@safe:

class DCRMErrorPageController : DAPPPageController {
  mixin(ControllerThis!("CRMErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CRMErrorView(this));
  }
}
mixin(ControllerCalls!("CRMErrorPageController"));
