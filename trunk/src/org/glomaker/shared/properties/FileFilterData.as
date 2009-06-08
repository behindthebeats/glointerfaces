package org.glomaker.shared.properties
{
	public class FileFilterData
	{	
		public var type:String;
		
		public var extensions:String;
		
		
		public function FileFilterData(type:String, extensions:String)
		{
			this.type = type;
			
			this.extensions = extensions;
		}

	}
}