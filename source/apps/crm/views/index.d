module apps.crm.views.index;

import apps.crm;
@safe:

class DcrmIndexView : DView {
  mixin(ViewThis!("crmIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DcrmIndexView~":DcrmIndexView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP crm -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("crmIndexView"));
