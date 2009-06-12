package org.glomaker.shared.properties
{
	public class IntegerProperty extends AbstractSimpleProperty
	{
		/**
		 * Constructor 
		 * @param propName
		 * @param label
		 * @param value
		 */
		public function IntegerProperty(propName:String, editLabel:String = null, propValue:int = -1)
		{
			super(propName, editLabel, propValue);
		}
		
		
		override public function set propValue(value:*):void
		{
			// type checking
			if(value && !(value is uint || value is int || value is Number))
				throw new Error("propValue of IntegerProperty must be a numeric value");
				
			super.propValue = Math.round(value);
		}		
		
	}
}