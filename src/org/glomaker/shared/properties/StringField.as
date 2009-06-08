package org.glomaker.shared.properties
{
	public class StringField extends PropertyField
	{
		public function StringField(propName:String, label:String, value:String)
		{
			super(propName, label, value);
		}
		
		override public function serialise():String
		{
			return value;
		}
		
		override public function deserialise(value:String):void
		{
			this.value = value;
		}
		
	}
}