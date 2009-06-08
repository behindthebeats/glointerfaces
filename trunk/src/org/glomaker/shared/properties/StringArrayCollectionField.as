package org.glomaker.shared.properties
{
	import mx.collections.ArrayCollection;
	 
	/**
	 * Defines an array of PropertyField instances. 
	 * @author Nils
	 */	
	public class StringArrayCollectionField extends PropertyField
	{
		private static const token:String = "|||";
		
		public function StringArrayCollectionField(propName:String, label:String, value:ArrayCollection = null)
		{
			super(propName, label, value);
		}
		
		public function get collection():ArrayCollection{
			return value as ArrayCollection;
		}
		
		override public function serialise():String
		{
			return (value as ArrayCollection).toArray().join(token);
		}
		
		override public function deserialise(value:String):void
		{
			this.value = new ArrayCollection(value.split(token));
		}
	}

}