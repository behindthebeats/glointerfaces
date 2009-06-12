package org.glomaker.shared.properties
{
	/**
	 * Stores a true/false Boolean value. 
	 * @author Nils
	 * 
	 */
	public class BooleanProperty extends AbstractSimpleProperty
	{
		/**
		 * Constructor 
		 * @param propName
		 * @param editLabel
		 * @param propValue
		 * 
		 */		
		public function BooleanProperty(propName:String, editLabel:String=null, propValue:Boolean = false)
		{
			super(propName, editLabel, propValue);
		}
		
		override public function set propValue(value:*):void
		{
			// type checking
			if(value && !(value is Boolean))
				throw new Error("propValue of BooleanProperty must be a Boolean");
				
			super.propValue = value;
		}
		
		
	}
}