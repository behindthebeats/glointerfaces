package org.glomaker.shared.properties
{
	public class BooleanField extends PropertyField
	{
		/**
		 * Constructor 
		 * @param propName
		 * @param label
		 * @param value
		 */
		public function BooleanField(propName:String, label:String, value:Boolean)
		{
			super(propName, label, value);
		}
		
		
		override public function serialise():String
		{
			return value ? "true" : "false";
		}
		
		override public function deserialise(value:String):void
		{
			this.value = (value == "true");
		}
		
	}
}