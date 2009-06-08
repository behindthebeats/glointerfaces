package org.glomaker.shared.properties
{
	/**
	 * Contains data relating to file paths. 
	 * @author USER
	 * 
	 */
	public class FilePathField extends StringField
	{
		
		private var _fileFilterData:FileFilterData;
		
		/**
		 * Constructor. Stores a reference to the component and an associated
		 * file path string. File filter data can also be sent to customise the Browse control.
		 * 
		 * @param component
		 * @param value
		 * 
		 */
		public function FilePathField(propName:String, label:String, value:String, fileFilterData:FileFilterData=null)
		{
			super(propName, label, value);
			
			_fileFilterData = fileFilterData;
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