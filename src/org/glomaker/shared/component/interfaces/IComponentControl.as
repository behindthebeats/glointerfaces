package org.glomaker.shared.component.interfaces
{
	public interface IComponentControl
	{
		function set pluginPropertyValue(value:*):void;
		
		function get pluginPropertyValue():*;
		
		function set pluginPropertyName(name:String):void;
		
		function get pluginPropertyName():String;
	}
}