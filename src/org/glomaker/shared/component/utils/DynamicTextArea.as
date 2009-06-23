package org.glomaker.shared.component.utils
{
  import flash.events.Event;
  
  import mx.controls.TextArea;
  import mx.events.FlexEvent;
 
  /**
   * Custom TextArea component that resizes vertically to fit, rather than show scrollbars. 
   * @author Nils
   */ 
  public class DynamicTextArea extends TextArea
  {
  	
    public function DynamicTextArea(){
      super();
      horizontalScrollPolicy = "off";
      verticalScrollPolicy = "off";
      
      addEventListener(Event.CHANGE, adjustHeightHandler, false, 0, false);
      addEventListener("textChanged", adjustHeightHandler, false, 0, false);
      addEventListener(FlexEvent.CREATION_COMPLETE, creationCompleteHandler, false, 0, false);
    }
    
    
    override public function setStyle(styleProp:String, newValue:*):void
    {
    	super.setStyle(styleProp, newValue);
    	adjustHeightHandler();
    }


	private function creationCompleteHandler( evt:Event ):void
	{
		removeEventListener(FlexEvent.CREATION_COMPLETE, adjustHeightHandler);
		textField.mouseWheelEnabled = false;
		adjustHeightHandler();
	}

    private function adjustHeightHandler(event:Event = null):void
    {
      height = calcRequiredHeight();
      validateNow();
    }

    override public function set height(value:Number):void{
      
      // if height set before creationComplete
      if(textField == null)
      {
          super.height = value;
          
      }else{
      	
        super.height = calcRequiredHeight();
        
        // text area has a funny way of scrolling text around to make room for next line
        // we override this behaviour
        textField.scrollV = 0;
      }
    }
    
    protected function calcRequiredHeight():Number
    {
    	if(!textField)
    	{
    		if(minHeight)
    			return minHeight;
    		else
    			return 0;
    	}
 
    	var requiredHeight:Number = textField.numLines * textField.getLineMetrics(0).height + 4;
    	return Math.max( minHeight, Math.min( maxHeight, requiredHeight ));
    }

  }
}
 