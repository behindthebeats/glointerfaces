package org.glomaker.shared.properties
{
	import mx.controls.TextArea;
	
	/**
	 * Contains data relating to rich text, i.e., html formatted. 
	 * @author USER
	 * 
	 */
	public class RichTextField extends PropertyField
	{
		// a reference to the textArea
		public var textArea:TextArea;
		
		/**
		 * Constructor. Associates a property, htmlText, with its value: <html>something</html>.
		 *  
		 * @param propName
		 * @param label
		 * @param value
		 * 
		 */
		public function RichTextField(ta:TextArea,propName:String, label:String, value:String)
		{
			super(propName, label, value);
			textArea = ta;
		}
		
		override public function destroy():void
		{
			textArea = null;
		}
		
		override public function serialise():String
		{
			// value will contain html content - so wrap in CDATA to preserve tags on save/import
			return "<![CDATA[" + value + "]]>";;
		}
		
		override public function deserialise(value:String):void
		{
			// assuming that incoming value doesn't have the CDATA wrapper
			// it should have been stripped by XML parser
			this.value = value;
		}
	}
}