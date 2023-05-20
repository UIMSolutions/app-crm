module apps.crm.views.error;

import apps.crm;
@safe:

class DCRMErrorView : DView {
  mixin(ViewThis!("CRMErrorView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCRMErrorView~":DCRMErrorView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP CRM -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("CRMErrorView"));
