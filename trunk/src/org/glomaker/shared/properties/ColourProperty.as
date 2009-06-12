package org.glomaker.shared.properties
{

	/**
	 * Stores a (uint) colour value. 
	 * @author Nils
	 */
	public class ColourProperty extends AbstractSimpleProperty
	{
		/**
		 * Constructor 
		 * @param propName
		 * @param label
		 * @param value
		 */
		public function ColourProperty(propName:String, editLabel:String = null, propValue:int = -1)
		{
			super(propName, editLabel, propValue);
		}
		
		
		override public function set propValue(value:*):void
		{
			// type checking
			if(value && !(value is uint || value is int || value is Number))
				throw new Error("propValue of ColourProperty must be a numeric value");
				
			super.propValue = uint(value);
		}		
		
	}
}