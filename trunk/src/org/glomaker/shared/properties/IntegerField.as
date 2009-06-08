package org.glomaker.shared.properties
{
	/**
	 * Contains data relating to integers. 
	 * @author USER
	 * 
	 */
	public class IntegerField extends PropertyField
	{
		/**
		 * Constructor 
		 * @param propName
		 * @param label
		 * @param value
		 */
		public function IntegerField(propName:String, label:String, value:int)
		{
			super(propName, label, value);
		}
		
		override public function serialise():String
		{
			return value.toString();
		}
		
		override public function deserialise(value:String):void
		{
			this.value = parseInt(value);
		}
		
	}
}