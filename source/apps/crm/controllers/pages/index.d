module apps.crm.controllers.pages.index;

import apps.crm;
@safe:

class DIndexPageController : DPageController {
  mixin(ControllerThis!("IndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(CRMIndexView(this));
  }
}
mixin(ControllerCalls!("IndexPageController"));
