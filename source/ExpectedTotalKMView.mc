import Toybox.Activity;
import Toybox.Lang;
import Toybox.Time;
import Toybox.WatchUi;

class ExpectedTotalKM extends WatchUi.SimpleDataField {

    function initialize() 
    {
        SimpleDataField.initialize();
        label = Application.loadResource(Rez.Strings.FieldTitle);
    }

    function compute(info as Activity.Info) as Numeric or Duration or String or Null 
    {
        if (info.elapsedDistance != null and info.distanceToDestination != null and info.distanceToDestination > 0)
        {
            return ((info.elapsedDistance + info.distanceToDestination) / 1000.0).format("%0.1f");
        }
        return "--";
    }

}