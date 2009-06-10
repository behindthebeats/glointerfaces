package org.glomaker.shared.properties
{
	/**
	 * Contains data relating to file paths. 
	 * @author USER
	 * 
	 */
	public class FilePathField extends StringField
	{
		
		protected static const NO_URL_VALUE:String = "FilePathField::NoUrlSet";
		
		private var _fileFilterData:FileFilterData;
		
		/**
		 * Constructor. Stores a reference to the component and an associated
		 * file path string. File filter data can also be sent to customise the Browse control.
		 * 
		 * @param component
		 * @param value
		 * 
		 */
		public function FilePathField(propName:String, label:String, value:String = NO_URL_VALUE, fileFilterData:FileFilterData=null)
		{
			super(propName, label, value);
			
			_fileFilterData = fileFilterData;
		}
		
		[Bindable]
		override public function set value(val:*):void
		{
			// override 'no value' with the NO_URL_VALUE constant
			// this has the side-effect of triggering the broken image skins for SWFLoader / Image component
			if(val == null || val == "" || val == " ")
				val = NO_URL_VALUE;
				
			super.value = val;
		}
		override public function get value():*
		{
			return super.value;
		}
		
		public function set fileFilterData(ffd:FileFilterData):void
		{
			_fileFilterData = ffd;
		}
		
		public function get fileFilterData():FileFilterData
		{
			return _fileFilterData;
		}
		
	}
}