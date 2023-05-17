module apps.crm.views.error;

import apps.crm;
@safe:

class DcrmErrorView : DView {
  mixin(ViewThis!("crmErrorView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DcrmErrorView~":DcrmErrorView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP crm -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("crmErrorView"));
