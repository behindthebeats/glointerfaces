package org.glomaker.shared.properties
{	
	/**
	 * Defines an array of PropertyField instances. 
	 * @author Nils
	 */	
	public class ArrayField extends PropertyField
	{
		public function ArrayField(propName:String, label:String, value:Array = null)
		{
			super(propName, label, value);
		}
		
		override public function serialise():String
		{
			return (value as Array).join("|||");
		}
		
		override public function deserialise(value:String):void
		{
			this.value = value.split("|||");
		}
	}

}