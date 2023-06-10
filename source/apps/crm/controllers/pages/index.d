module apps.crm.controllers.pages.index;

import apps.crm;
@safe:

class DCRMIndexPageController : DPageController {
  mixin(ControllerThis!("CRMIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CRMIndexView(this));
  }
}
mixin(ControllerCalls!("CRMIndexPageController"));
