package org.glomaker.shared.properties
{
	
	 
	/**
	 * Abstract class used to describe a GLO plugin property.
	 * Extend the class to define specific component properties (number, text, filename, etc) 
	 * @author Nils
	 */	
	public class PropertyField
	{
		/**
		 * Error message for unimplemented abstract methods. 
		 */		
		public static const ABSTRACT_IMPLEMENTATION_ERROR:String = "Abstract method - implement in subclass";

			
		//private var _target:Object;
		private var _value:*;
		private var _propName:String;
		private var _label:String;
		private var _isEditable:Boolean = true;
		
		/**
		 * Constructor 
		 * @param definedBy Plugin defining this property.
		 * @param target Target object the property belongs to.
		 * @param propName The name of the property.
		 * @param label The text description of property.
		 * @param editable true - user should be able to edit value directly, false - used internally by the component
		 */		 
		public function PropertyField(propName:String, label:String, value:* = null, editable:Boolean = true)
		{
			//_target = target;
			_propName = propName;
			_label = label;
			_value = value;
			_isEditable = isEditable;
		}
		
		/**
		 * Cleanup method.
		 * Override in subclass to handle implementation-specific cleanup requirements. 
		 */		
		public function destroy():void
		{
		}
		
		/**
		 * Serialise to string.
		**/
		public function serialise():String
		{
			throw new Error(ABSTRACT_IMPLEMENTATION_ERROR);
		}
		
		/**
		 * Deserialise from string. 
		 */		
		public function deserialise(value:String):void
		{
			throw new Error(ABSTRACT_IMPLEMENTATION_ERROR);
		}
		
		/**
		 * Create a cloned instance.
		**/
		public function clone():PropertyField
		{
			throw new Error(ABSTRACT_IMPLEMENTATION_ERROR);
		}
		
		
		// **********************
		// Getter / Setters
		// **********************
		
		[Bindable]
		public function get value():*
		{
			return _value;	
		}
		public function set value(val:*):void
		{
			_value = val;
		}
		/* public function get target():Object
		{
			return _target;
		}  */
		public function get propName():String
		{
			return _propName;
		}
		public function get label():String
		{
			return _label;
		}
		
		[Bindable]
		public function set isEditable(value:Boolean):void
		{
			_isEditable = value;
		}
		public function get isEditable():Boolean
		{
			return _isEditable;
		}

	}
}