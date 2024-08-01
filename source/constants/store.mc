import Toybox.Lang;
import Toybox.Time;


module store {
  class BackgroundType {
    enum {
      None = 0,
      Solid = 1,
      Gradient = 2,
      Image = 3
    }
  }

  var dateFormat as String = "mmm d (ddd)";
  var hourLeadingZero as Boolean = true;
  var canDisplaySecond as Boolean = false;
  
  var foregroundColor as Number = Toybox.Graphics.COLOR_LT_GRAY;
  var background as Number = BackgroundType.Gradient;
  var backgroundGradientInner as Number or Null = 0x393C41;
  var backgroundGradientOuter as Number or Null  = 0x080C10;

  function init(){
    dateFormat = Toybox.Application.Properties.getValue("dateFormat");
    hourLeadingZero = Toybox.Application.Properties.getValue("hourLeadingZero");
    canDisplaySecond = Toybox.Application.Properties.getValue("canDisplaySecond");

    foregroundColor = Toybox.Application.Properties.getValue("foregroundColor").toNumberWithBase(16);
    background = Toybox.Application.Properties.getValue("background");
    backgroundGradientInner = background!=BackgroundType.None && background!=BackgroundType.Image ? Toybox.Application.Properties.getValue("backgroundGradientInner").toNumberWithBase(16) : null;
    backgroundGradientOuter = background==BackgroundType.Gradient ? Toybox.Application.Properties.getValue("backgroundGradientOuter").toNumberWithBase(16) : null;
  }
}
