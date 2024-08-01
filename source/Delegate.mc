import Toybox.WatchUi;
import Toybox.Time;
import Toybox.System;
import Toybox.Application;

class Delegate extends WatchUi.WatchFaceDelegate {
  function initialize() {
    WatchFaceDelegate.initialize();
  }
  function onPress(powerInfo) {
    store.canDisplaySecond = !store.canDisplaySecond;
    Application.Properties.setValue("canDisplaySecond", store.canDisplaySecond);

    return true;
  }
}
