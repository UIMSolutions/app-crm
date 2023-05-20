module apps.crm.views.index;

import apps.crm;
@safe:

class DCRMIndexView : DView {
  mixin(ViewThis!("CRMIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCRMIndexView~":DCRMIndexView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP CRM -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("CRMIndexView"));
