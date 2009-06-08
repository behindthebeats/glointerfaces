package org.glomaker.shared.properties
{
	
	/**
	 * Contains data relating to numbers. 
	 * @author USER
	 * 
	 */
	public class NumberField extends PropertyField
	{
		
		/**
		 * Constructor. Stores a reference to the component and an associated
		 * number value.
		 * 
		 * @param propName
		 * @param label
		 * @param value
		 */		 
		public function NumberField(propName:String, label:String, value:Number)
		{
			super(propName, label, value);
		}
		
		override public function serialise():String
		{
			return value.toString();
		}
		
		override public function deserialise(value:String):void
		{
			this.value = Number(value);
		}	
		
	}
}