package org.glomaker.shared.properties
{

	/**
	 * Provides an abstract base-class for more complex custom properties.
	 * When extending this class, you will need to override serialiseToXML() and deserialiseFromXML().
	 * 
	 * If you have no desire or no need to provide your own data serialisation, consider extending AbstractSimpleProperty instead.
	 * 
	 * @author Nils
	 */
	public class AbstractCustomProperty implements IComponentProperty
	{

		// ------------------------------------------------------------------
		// INSTANCE PROPERTIES 
		// ------------------------------------------------------------------
		
		private var _propValue:*;
		private var _propName:String = "";
		private var _editLabel:String = "";
		
		
		// ------------------------------------------------------------------
		// CONSTRUCTOR 
		// ------------------------------------------------------------------
		
		/**
		 * Constructor 
		 * @param name
		 * @param label
		 * @param value
		 */		 	
		public function AbstractCustomProperty(name:String, label:String = null, value:* = null)
		{
			propName = name;
			editLabel = label;
			propValue = value;
		}


		// ------------------------------------------------------------------
		// PUBLIC METHODS (implement the IComponentProperty interface)
		// ------------------------------------------------------------------

		public function set propValue(value:*):void
		{
			_propValue = value;
		}
		
		public function get propValue():*
		{
			return _propValue;
		}
		
		public function set propName(value:String):void
		{
			_propName = value;
		}
		
		public function get propName():String
		{
			return _propName;
		}
		
		public function set editLabel(value:String):void
		{
			_editLabel = value;
		}
		
		public function get editLabel():String
		{
			return _editLabel;
		}
		
		public function isFilePath():Boolean
		{
			// returns false by default to indicate that this property doesn't store a filePath
			// override in subclass for changed behaviour
			return false;
		}
		
		public function hasOwnSerialiser():Boolean
		{
			// all subclasses must provide their own serialisation code
			// extend the AbstractSimpleProperty class if you don't require custom serialisation
			return true;
		}
		
		public function serialiseToXML(parentNode:XML):void
		{
			// extend the AbstractSimpleProperty class if you don't require custom serialisation
			throw new Error("Abstract method - implement in subclass.");
			return null;
		}
		
		public function deserialiseFromXML(value:XML):void
		{
			// extend the AbstractSimpleProperty class if you don't require custom serialisation
			throw new Error("Abstract method - implement in subclass.");
		}
		
		public function destroy():void
		{
		}
		
	}
}