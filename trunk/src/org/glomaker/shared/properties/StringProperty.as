package org.glomaker.shared.properties
{
	public class StringProperty extends AbstractSimpleProperty
	{
		/**
		 * Constructor 
		 * @param propName
		 * @param label
		 * @param value
		 */
		public function StringProperty(propName:String, editLabel:String = null, propValue:String = null)
		{
			super(propName, editLabel, propValue);
		}
		
		
		override public function set propValue(value:*):void
		{
			// type checking
			if(value && !(value is String))
				throw new Error("propValue of StringProperty must be a String");
				
			super.propValue = value;
		}		
		
	}
}