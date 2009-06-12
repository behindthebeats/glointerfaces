package org.glomaker.shared.properties
{
	import mx.controls.TextArea;
	
	public class RichTextProperty extends StringProperty
	{
		
		public var textArea:TextArea;
		
		/**
		 * Constructor 
		 * @param propName
		 * @param label
		 * @param value
		 */
		public function RichTextProperty(propName:String, editLabel:String = null, propValue:String = null)
		{
			super(propName, editLabel, propValue);
		}		
		
		override public function destroy():void
		{
			textArea = null;
		}
		
		// no additional code, StringProperty sorts out the rest
		
	}
}